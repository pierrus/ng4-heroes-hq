import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs/Observable';
import { Subject }           from 'rxjs/Subject';

import { HeroesService } from './services/heroes.service';
import { Hero } from './services/hero';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html'
  // styleUrls: ['../static/css/reset.css', '../static/css/style.css']
})
export class AppComponent implements OnInit {
  title = 'app works!';
  heroesTotal: Number = 0;

  constructor (private heroesService: HeroesService)
  {
    
  }

  ngOnInit()
  {
    this.heroesService.heroesTotalObservable.subscribe(total => this.heroesTotal = total);
  }
}