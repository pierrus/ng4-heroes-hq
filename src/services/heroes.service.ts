import { Injectable } from '@angular/core';
import { HttpModule, Http }    from '@angular/http';
import 'rxjs/add/operator/map'
import { Observable } from 'rxjs/Observable';
import { Subject }           from 'rxjs/Subject';
import 'rxjs/add/observable/of';

import { Hero }    from './hero';

@Injectable()
export class HeroesService {

    heroes: Hero[] = null;

    constructor(private http: Http)
    {
        this.loadHeroes();
    }

    private loadHeroes(): void {
        this.http.get('assets/heroes.json')
                    .map(res => res.json() as Hero[])
                    .subscribe(heroes => this.heroes = heroes);
    }

    getHeroes(): Observable<Hero[]>  {

        if (this.heroes === null)
            return this.http.get('assets/heroes.json')
                    .map(res => res.json() as Hero[]);

        return Observable.of<Hero[]>(this.heroes);
    }

    countHeroes(): Observable<Number>  {

       if (this.heroes === null)
            return this.http.get('assets/heroes.json')
                    .map(res => (res.json() as Hero[]).length);

        return Observable.of<Number>(this.heroes.length);
    }

    // searchHeroes(searchTerm: string): Observable<Hero>  {

    //    if (this.heroes === null)
    //         return this.http.get('assets/heroes.json')
    //                 .map(res => (res.json() as Hero[]).length)
    //                 .map(heroes => heroes.);

    //     return Observable.of<Number>(this.heroes.length);        
    // }

    // getHeroes(): Hero[]
    // {
    //     return this.heroes;
    // }
}