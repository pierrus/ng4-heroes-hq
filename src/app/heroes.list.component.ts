import { Component, OnInit } from '@angular/core';

import { HeroesService } from './services/heroes.service';
import { Hero } from './services/hero';

@Component({
  selector: 'heroes-list',
  templateUrl: './heroes.list.component.html'
})

export class HeroesListComponent implements OnInit {

  constructor (private heroesService: HeroesService)
  {
    
  }

  ngOnInit()
  {
    this.heroesService.heroesObservable.subscribe(heroes => this.heroes = heroes);
  }
  
  heroes: Hero[];
  title = 'app works!';
}
