import { NgModule } from '@angular/core';

import { CollapseModule } from 'ngx-bootstrap/collapse'; 
import { AccordionModule } from 'ngx-bootstrap/accordion';

@NgModule({
  imports: [
    CollapseModule.forRoot(),
    AccordionModule.forRoot()
  ],
  exports: [
    CollapseModule,
    AccordionModule
  ]
})
export class UtilBootstrapModule { }
