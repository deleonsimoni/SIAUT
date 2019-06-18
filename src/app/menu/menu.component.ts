import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';
import { trigger, style, state, transition, animate } from '@angular/animations';

@Component({
  selector: 'app-menu',
  templateUrl: './menu.component.html',
  styleUrls: ['./menu.component.css']
})
export class MenuComponent implements OnInit {

  public isCollapsed = false;
  @Output() room = new EventEmitter;

  constructor() { }

  ngOnInit() {
  }

  select(param) {
    let list: any[];
    if (param === 'Sala') {
      list = [
        'Sky',
        'Televisão',
        'Ventilador'
      ];
    } else {
      list = [
        'Ar-condicionado',
        'Notebook',
        'Xbox'
      ];
    }

    this.room.emit({ name: param, list: list });
  }

}
