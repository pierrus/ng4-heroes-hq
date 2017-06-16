import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { RouterModule, Routes } from '@angular/router';

import { AppComponent } from './app.component';
import { HeroesListComponent } from './heroes.list.component';
import { HeroesDetailComponent } from './heroes.detail.component';
import { SearchComponent } from './search.component';

import { HeroesService } from '../services/heroes.service'

const appRoutes: Routes = [
  { path: 'heroes-list', component: HeroesListComponent },
  { path: 'heroes-detail/:id', component: HeroesDetailComponent },
  { path: 'heroes-new', loadChildren: 'app/heroes.new.component/heroes.new.module#HeroesNewModule' },
  { path: 'search', component: SearchComponent },
  { path: '', redirectTo: '/heroes-list', pathMatch: 'full' }
];

@NgModule({
  declarations: [
    AppComponent,
    HeroesListComponent,
    HeroesDetailComponent,
    SearchComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule,
    RouterModule.forRoot(appRoutes)
  ],
  providers: [ HeroesService ],
  bootstrap: [ AppComponent ]
})
export class AppModule { }