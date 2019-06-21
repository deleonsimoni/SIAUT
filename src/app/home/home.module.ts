import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HomeComponent } from './home.component';
import { MenuComponent } from '../menu/menu.component';
import { HeaderComponent } from '../header/header.component';
import { FooterComponent } from '../footer/footer.component';
import { RouterModule, Routes } from '@angular/router';
import { AuthService } from '../auth/auth.service';
import { TokenStorage } from '../auth/token.storage';
import { DashboardComponent } from '../dashboard/dashboard.component';

const CONST_ROUTES: Routes = [

 { path: '', component: HomeComponent,
    children:[
      {
         path: '', pathMatch: 'full', redirectTo: 'dashboard'
      },
      {
         path: 'dashboard', component: DashboardComponent
      }
    ]
 }


];

@NgModule({
  imports: [
    CommonModule,
    RouterModule.forChild(CONST_ROUTES)
  ],
  exports: [
    RouterModule
  ],
  declarations: [
    HomeComponent,
    MenuComponent,
    DashboardComponent,
    HeaderComponent,
    FooterComponent
  ]
})
export class HomeModule { }
