import { Component, OnInit } from '@angular/core';
import { Login } from "src/app/models/login";
import { Service } from "src/app/services/services";
import { NgForm } from '@angular/forms';
import { Router } from '@angular/router';
@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  
  mainLogoUrl='assets/images/mainLogo.png';

  login = new Login();
  status;
  
  constructor(private service : Service, private router : Router) { }


  ngOnInit(): void {
  }

  loginACustomer(form:NgForm){
    this.service.loginACustomer(this.login).subscribe(
      data=>{
    
        this.status=data;
        if(data.status=="SUCCESS"){
          console.log("Login Successfull")
          console.log(JSON.stringify(data))
          let customerId= data.customerId;
          let customerName=data.customerFirstName;
          sessionStorage.setItem('customerId',customerId);
          sessionStorage.setItem('customerFirstName',customerName); 
          alert("Login Successfull")
          this.router.navigate(['user-dashboard']);
        }
        else{
            alert("Login Not Successfull");
        }
      }
    )
  }
}
