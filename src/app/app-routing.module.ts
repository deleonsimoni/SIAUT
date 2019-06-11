import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { DashboardComponent } from './dashboard/dashboard.component';
import { LoginComponent } from './login/login.component';
import { ContainerComponent } from './container/container.component';

const routes: Routes = [
  {
    path: '', pathMatch: 'full', redirectTo: 'login'
  },
  {
    path: 'container', component: ContainerComponent, children:[
      {
      path: 'dashboard', component: DashboardComponent
      },
      {
        path: 'container', pathMatch: 'full', redirectTo: 'dashboard'
      }
   ]

  },
  {
    path: 'login', component: LoginComponent  
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule] 
})
export class AppRoutingModule { }
