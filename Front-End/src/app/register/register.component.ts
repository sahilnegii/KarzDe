import { Component, OnInit } from '@angular/core';
import { Router } from "@angular/router";
import { Customer } from "src/app/models/customer";
import { Service } from "src/app/services/services";
import { NgForm } from '@angular/forms';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css']
})
export class RegisterComponent implements OnInit {

  
  
  
  message: any;
  data: Object;

    constructor(private router: Router, private service:Service) { }
    status;
    ngOnInit() {
    }

   
    
    
    customerId : number;
    customerFirstName : string;
    customerLastName : string;
    customerEmail:string;
    customerdateOfBirth : any;
    customerCity:string;
    customerMobileNumber:string;
    customerEmploymentType:string;
    customerPassword : string;
    
    customer=new Customer();
    registerACustomer(form :NgForm) {
      /*
      this.customer.customerId=this.customerId;
      this.customer.customerFirstName=this.customerFirstName;
      this.customer.customerLastName=this.customerLastName;
      this.customer.customerEmail=this.customerEmail;
      this.customer.customerdateOfBirth=this.customerdateOfBirth;
      this.customer.customerCity=this.customerCity;
      this.customer.customerMobileNumber=this.customerMobileNumber;
      this.customer.customerEmploymentType=this.customerEmploymentType;
      this.customer.customerPassword=this.customerPassword
          
      this.service.registerACustomer(this.customer).subscribe(data=>{

              if(data.status=='SUCCESS'){
               alert("Thank you for registering with us");
                /*this.data=data;
                this.message=data.message;
                console.log(data);
                //this.status=data;
                this.router.navigate(['/loginLink']);
              }
              
              else{
                this.message=data.message;
              } 
        }
      ) 
    }
  */
    
      alert(JSON.stringify(this.customer));
      this.service.registerACustomer(this.customer).subscribe(
        data=>{
          this.status=data;
          console.log(data);
          sessionStorage.setItem('customerUserId',this.status.customerId)
          this.router.navigate(['register-success']);
        }
      )
    }
}
