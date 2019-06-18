import { Injectable } from '@angular/core';
import { CanActivate, Router } from '@angular/router';
import { Observable } from 'rxjs';
import { AuthService } from './auth.service';

@Injectable()
export class AuthGuard implements CanActivate {

  user;

  constructor(public router: Router
              ,public authService: AuthService) {}

  canActivate() {
    const user = (<any>window).user;
    if (user) return true;

    // not logged in so redirect to login page with the return url
    this.router.navigate(['/auth/login']);
    return false;
  }

 /* canActivate() {
    return new Observable<boolean>(observer => {
      this.authService.me().subscribe(data => {
        this.user = data.user;
        if (this.user){
          return observer.next(true);
        } else {
          this.router.navigate(['/auth/login']);
          return observer.next(false);
        }
      })
    });
  }*/

} 
