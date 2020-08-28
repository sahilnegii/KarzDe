import { Component, OnInit } from '@angular/core';
import { NgModule } from '@angular/core';



@Component({
  selector: 'app-emi-cal',
  templateUrl: './emi-cal.component.html',
  styleUrls: ['./emi-cal.component.css']
})
export class EmiCalComponent implements OnInit {

  constructor() { 
   
  }

  ngOnInit() {
  } 
  loanamount:any;
  tenure:any;
  tenure1:any;
  roi: any;
  roi1: any;
  emi:any;
  emi1: any;
  pow1:any;
  pow2:any;
  monthlyincome:any;
  eligibility:any;
  interest:any;
  totalAmt: any;
  flag: boolean=false;
  

  cal()
  {
        this.tenure1=this.tenure*12;
        this.roi1=this.roi/(12*100);
        this.pow1=Math.pow(1+this.roi1,this.tenure1);
        //this.pow2=Math.pow(1+this.roi1,this.tenure1)-1;
        this.emi=(this.loanamount*this.roi1*this.pow1)/(this.pow1-1);
        this.emi1=Math.round(this.emi);

       this.interest=(this.emi*this.tenure1)-this.loanamount
       this.interest=Math.round(this.interest);

        this.totalAmt=this.loanamount+this.interest;
       
    this.flag=true;
  }

  handleTenureEvent(event){
    let val= event.target.value;
    this.tenure= parseInt(val);
  }

  handleRoiEvent(event){
    let val= event.target.value;
    this.roi= parseFloat(val);
  }

  handleLoanEvent(event){
    let val= event.target.value;
    this.loanamount= parseInt(val);
  }

}
