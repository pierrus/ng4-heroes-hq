import { Injectable } from '@angular/core';
import { HttpModule, Http }    from '@angular/http';

import { Observable } from 'rxjs/Observable';
import { Subject }           from 'rxjs/Subject';

import 'rxjs/add/observable/of';
import 'rxjs/add/operator/filter';
import 'rxjs/add/operator/first';
import 'rxjs/add/operator/mergeMap';
import 'rxjs/add/operator/map';

import { Hero }    from './hero';

@Injectable()
export class HeroesService {

    heroes: Observable<Hero[]> = null;
    additionnalHeroes: Hero[] = new Array<Hero>();

    constructor(private http: Http)
    {
        this.loadHeroes();
    }

    private loadHeroes(): void {
        this.heroes = this.http.get('assets/heroes.json')
                    .map(res => {
                        let typedRes = res.json() as Hero[];
                        typedRes = typedRes.concat(this.additionnalHeroes);
                        return typedRes;
                     });
    }

    getHeroes(): Observable<Hero[]> {
        return this.heroes;
    }

    countHeroes(): Observable<Number> {
        return this.heroes.map(heroes => heroes.length);
    }

    getHero(id: Number): Observable<Hero> {
       return this.heroes
                    .mergeMap(hero => hero)
                    .filter(hero => hero.Id == id)
                    .first();
    }

    searchHeroes(searchTerm: string): Observable<Hero[]> {
        return this.heroes
                    .map(heroes => heroes.filter(hero => hero.Nom.toLowerCase().includes(searchTerm.toLowerCase())));
    }

    addHero (hero: Hero) {
        this.additionnalHeroes.push(hero);
        hero.Id = 50;
        this.loadHeroes();
    }
}