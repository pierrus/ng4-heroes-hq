import { Injectable, OnInit } from '@angular/core';
import { HttpModule, Http } from '@angular/http';

import { Observable } from 'rxjs/Observable';
import { Subject } from 'rxjs/Subject';
import { BehaviorSubject } from 'rxjs/BehaviorSubject';

import 'rxjs/add/observable/of';
import 'rxjs/add/operator/filter';
import 'rxjs/add/operator/first';
import 'rxjs/add/operator/mergeMap';
import 'rxjs/add/operator/map';

import { Hero } from './hero';

@Injectable()
export class HeroesService {

    //BehaviorSubject so new subscribers get the previously pushed (next) value
    private _heroesSubject: BehaviorSubject<Hero[]> = new BehaviorSubject<Hero[]>(new Array<Hero>());
    private _heroesTotalSubject: BehaviorSubject<Number> = new BehaviorSubject<Number>(0);
    private _heroes: Hero[] = new Array<Hero>();

    public readonly heroesObservable: Observable<Hero[]> = this._heroesSubject.asObservable();
    public readonly heroesTotalObservable: Observable<Number> = this._heroesTotalSubject.asObservable();

    constructor(private http: Http)
    {
        console.log("Heroes service initialized");
        this.loadHeroes();
    }

    // Only for directives / components
    // ngOnInit()
    // {
    //     this.loadHeroes();
    // }

    private loadHeroes(): void {
        this.http.get('assets/heroes.json')
            .map(res => {
                let typedRes = res.json() as Hero[];
                return typedRes;
                })
            .subscribe(heroes => {
                this._heroes = heroes;
                this._heroesSubject.next(this._heroes);
                this._heroesTotalSubject.next(this._heroes.length);
            });
    }

    getHero(id: Number): Observable<Hero> {
       return Observable.of(this._heroes)
                    .mergeMap(hero => hero)
                    .filter(hero => hero.Id == id)
                    .first();
    }

    searchHeroes(searchTerm: string): Observable<Hero[]> {

        if (searchTerm === '' || searchTerm == null)
            return Observable.of(this._heroes);

        return Observable.of(this._heroes)
                            .map(heroes => heroes.filter(hero => hero.Nom.toLowerCase().includes(searchTerm.toLowerCase())));
    }

    addHero (hero: Hero) {
        hero.Id = this._heroes.sort((a, b) => b.Id - a.Id)[0].Id + 1;
        console.log("Adding new hero with Id " + hero.Id);
        this._heroes.push(hero);
        this._heroesSubject.next(this._heroes);
        this._heroesTotalSubject.next(this._heroes.length);
    }
}