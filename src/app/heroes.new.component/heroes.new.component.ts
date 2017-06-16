import { Component, OnInit } from '@angular/core';

import { HeroesService }   from '../../services/heroes.service';
import { Hero } from '../../services/hero';

@Component({
  selector: 'heroes-new',
  templateUrl: './heroes.new.component.html'
})

export class HeroesNewComponent implements OnInit {
  hero: Hero;
  heroCreated: boolean = false;
  error: boolean = false;

  constructor(private heroesService: HeroesService)
  {
  }

  createHero() : void {
    console.log("Création héro " + this.hero.Nom);

    if (this.hero.Age == null  || this.hero.Age <= 0
        || this.hero.Citation == null  || this.hero.Citation == ''
        || this.hero.Nom == null  || this.hero.Nom == ''
        || this.hero.Pouvoir == null || this.hero.Pouvoir == '')
    {
      this.error = true;
      return;
    }

    this.heroesService.addHero(this.hero);
    this.error = false;
    this.heroCreated = true;
  }

  ngOnInit() {
    this.hero = new Hero();
  }
}
