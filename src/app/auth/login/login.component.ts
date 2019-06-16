import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { FormGroup, FormControl, Validators } from '@angular/forms';

// Modules and features imports
import { AuthService } from '../auth.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['../auth.component.scss']
})
export class LoginComponent implements OnInit {

  formLogin: FormGroup;

  constructor(
    private authService: AuthService,
    private router: Router
  ) {

    this.formLogin = new FormGroup({
      email: new FormControl(null, [Validators.required]),
      password: new FormControl(null, [Validators.required])
    });

  }

  ngOnInit() {
  }

  login(): void {
    this.authService.login(this.formLogin.value)
      .subscribe(data => {
        console.log(data);
        this.router.navigate(['']);
      });
  }

}
