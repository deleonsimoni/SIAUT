import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { FormGroup, FormControl, Validators, ValidationErrors } from '@angular/forms';


import {AuthService} from '../auth.service';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['../auth.component.scss']
})
export class RegisterComponent implements OnInit {

  userForm: FormGroup;

  constructor(private authService: AuthService, private router: Router) {

    this.userForm = new FormGroup({
      fullname: new FormControl('', [Validators.required]),
      email: new FormControl('', [Validators.required, Validators.email]),
      password: new FormControl('', [Validators.required]),
      repeatPassword: new FormControl('', [Validators.required, this.passwordsMatchValidator])
    });

    this.userForm.valueChanges.subscribe(data => {
      console.log(this.userForm);
    })
  }

  ngOnInit() {
  }

  passwordsMatchValidator(control: FormControl): ValidationErrors {
    const password = control.root.get('password');
    return password && control.value !== password.value ? {
      passwordMatch: true
    } : null;
  }

  get fullname(): any { return this.userForm.get('fullname'); }
  get email(): any { return this.userForm.get('email'); }
  get password(): any { return this.userForm.get('password'); }
  get repeatPassword(): any { return this.userForm.get('repeatPassword'); }

  register() {
    console.log('****** userFormValue ********');
    console.log(this.userForm.value);

    console.log('****** getRawValue ********');
    console.log(this.userForm.getRawValue());

    if (!this.userForm.valid) return;

    let {
      fullname,
      email,
      password,
      repeatPassword
    } = this.userForm.getRawValue();

    this.authService.register(fullname, email, password, repeatPassword)
      .subscribe(data => {
        this.router.navigate(['']);
      });
  }

}
