import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  // create route par defaut on home
  {
    path: '', pathMatch: 'full', redirectTo: 'home'
  },
  {
    path: 'home', loadComponent() {return import('./home/home.component').then(m => m.HomeComponent); },
  }

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
