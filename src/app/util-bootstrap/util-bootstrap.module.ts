import { NgModule } from '@angular/core';

import { CollapseModule } from 'ngx-bootstrap/collapse'; 
import { AccordionModule } from 'ngx-bootstrap/accordion';

import { MatSlideToggleModule } from '@angular/material/slide-toggle';
import { MatExpansionModule } from '@angular/material/expansion';

@NgModule({
  imports: [
    CollapseModule.forRoot(),
    AccordionModule.forRoot(),
    MatSlideToggleModule,
    MatExpansionModule
  ],
  exports: [
    CollapseModule,
    AccordionModule,
    MatSlideToggleModule,
    MatExpansionModule
  ]
})
export class UtilBootstrapModule { }
