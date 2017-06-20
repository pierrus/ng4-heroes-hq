import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Params }   from '@angular/router';

import 'rxjs/add/operator/switchMap'

import { HeroesService }   from './services/heroes.service';
import { Hero } from './services/hero';

@Component({
  selector: 'heroes-detail',
  templateUrl: './heroes.detail.component.html'
})
export class HeroesDetailComponent implements OnInit {
  hero: Hero;

  constructor(private route: ActivatedRoute, private heroesService: HeroesService)
  {
  }

  ngOnInit() {
    this.route.params
      // (+) converts string 'id' to a number
      .switchMap((params: Params) => this.heroesService.getHero(+params['id']))
      .subscribe((hero: Hero) => this.hero = hero);
  }
}
