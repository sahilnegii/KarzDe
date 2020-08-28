import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-about-us',
  templateUrl: './about-us.component.html',
  styleUrls: ['./about-us.component.css']
})
export class AboutUsComponent implements OnInit {

  sahilnegiUrl = "assets/images/i111.jpeg";
  rishikabhatiaUrl = "assets/images/i2.jpeg";
  emaadsultanUrl = "assets/images/i333.jpg";

  constructor() { }

  ngOnInit(): void {
  }

}
