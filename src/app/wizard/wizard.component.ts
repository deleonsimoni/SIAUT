import { Component, OnInit } from '@angular/core';
import { Subscription } from 'rxjs';
import { AuthService } from '../auth/auth.service';
import {MatStepperModule} from '@angular/material/stepper';
import { FormGroup } from '@angular/forms';

@Component({
  selector: 'app-wizard',
  templateUrl: './wizard.component.html',
  styleUrls: ['./wizard.component.scss']
})
export class WizardComponent implements OnInit {

  private userSubscription: Subscription;
  public user: any;
  public housesFormGroup: FormGroup;
  public roomFormGroup: FormGroup;


  constructor(
    private authService: AuthService,

  ) {
    
   }

  public ngOnInit() {

    // init this.user on startup
    this.authService.me().subscribe(data => {
      this.user = data.user;
    });

    // update this.user after login/register/logout
    this.userSubscription = this.authService.$userSource.subscribe((user) => {
        this.user = user;
    });
  }


}
