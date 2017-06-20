import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule, Routes } from '@angular/router';
import { FormsModule } from '@angular/forms';

import { HeroesNewComponent } from './heroes.new.component';

import { HeroesService } from '../services/heroes.service'

const moduleRoutes: Routes = [
  { path: '', component: HeroesNewComponent }
];

@NgModule({
  declarations: [
    HeroesNewComponent
  ],
  imports: [
    CommonModule,
    FormsModule,
    RouterModule.forChild(moduleRoutes)
  ],
  exports: [
    RouterModule
  ]
})
export class HeroesNewModule { }