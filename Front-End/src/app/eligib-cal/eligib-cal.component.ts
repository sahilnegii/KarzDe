import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-eligib-cal',
  templateUrl: './eligib-cal.component.html',
  styleUrls: ['./eligib-cal.component.css']
})
export class EligibCalComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }
  monthlyincome:any;
  eligibility:any;
  
  flag: boolean=false;
  

  cal()
  {
  this.eligibility=60*(0.6*this.monthlyincome);
  this.eligibility=Math.round(this.eligibility);
  this.flag=true;
  }

  handleMonthlyIncomeEvent(event){
    let val= event.target.value;
    this.monthlyincome= parseInt(val);
  }


}
