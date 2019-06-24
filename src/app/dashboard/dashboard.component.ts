import { Component, OnInit, Input } from '@angular/core';
import { Subject } from 'rxjs';
import { trigger, state, style, transition, animate } from '@angular/animations';

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.css'],
  animations: [
    trigger('loadList', [
      state('void', style({
        opacity: 0
      })),
      state('*', style({
        opacity: 1
      })),
      transition('void => *', animate('800ms ease-in', style({
        opacity: 1
      })))
    ])
  ]
})
export class DashboardComponent implements OnInit {

  // @Input() comodo: any[];
  public comodo = {
    name: 'Sala',
    list: [
      {
        'title': 'Sky',
        'icon': 'fa-digital-tachograph'
      },
      {
        'title': 'Televisão',
        'icon': 'fa-tv'
      },
      {
        'title': 'Ventilador',
        'icon': 'fa-wind'
      }
    ]
  };

  constructor() {}

  ngOnInit() {}

}
