import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {

  public comodo = {
    name: 'Sala',
    list: [
      'Sky',
      'Televisão',
      'Ventilador'
    ]
  };

  constructor() { }

  ngOnInit() {
  }

  selectedRoom(event) {
    this.comodo = event;
  }

}
