import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AuthGuard } from '../auth/auth-guard.service';

const routes: Routes = [
  {
    path: '', pathMatch: 'full', redirectTo: 'home'
  },
  {
    path: 'home',
    loadChildren: 'app/home/home.module#HomeModule',
    // canActivate: [AuthGuard]
  },
  {
    path: 'auth',
    loadChildren: 'app/auth/auth.module#AuthModule',
    canActivate: [AuthGuard]
  },
  {
    path: 'admin',
    loadChildren: 'app/admin/admin.module#AdminModule'
  }
];

@NgModule({
  imports: [
    RouterModule.forRoot(routes)
  ],
  exports: [
    RouterModule
  ],
  providers: [
    AuthGuard
  ],
  declarations: []
})

export class AppRoutingModule {}
