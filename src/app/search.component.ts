import { Component, OnInit } from '@angular/core';

import { HeroesService } from '../services/heroes.service';
import { Hero } from '../services/hero';

@Component({
  selector: 'search',
  templateUrl: './search.component.html'
})
export class SearchComponent implements OnInit {
  constructor (private heroesService: HeroesService)
  {
  }

  ngOnInit()
  {
    this.heroesService.getHeroes().subscribe(heroes => this.heroes = heroes);
  }

  search(searchTerm: string) {

    console.log('Searching ' + searchTerm);

    if (searchTerm === '' || searchTerm == null)
      this.heroesService.getHeroes().subscribe(heroes => this.heroes = heroes);

    this.heroesService.searchHeroes(searchTerm).subscribe(heroes => this.heroes = heroes);
  }

  heroes: Hero[];
}
