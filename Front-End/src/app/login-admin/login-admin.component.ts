import { Component, OnInit } from '@angular/core';
import { AdminLogin } from "src/app/models/AdminLogin";
import { Service } from "src/app/services/services";
import { NgForm } from '@angular/forms';

@Component({
  selector: 'app-login-admin',
  templateUrl: './login-admin.component.html',
  styleUrls: ['./login-admin.component.css']
})
export class LoginAdminComponent implements OnInit {
  mainLogoUrl='assets/images/mainLogo.png';
  
  AdminLogin = new AdminLogin();
  status;
  constructor(private service : Service) { }

  ngOnInit(): void {
  }
  
  loginAdmin(form:NgForm){
    this.service.loginAdmin(this.AdminLogin).subscribe(
      data=>{
        console.log(data)

        this.status=data;
        if(data.status=="SUCCESS"){
          let customerId= data.customerId;
          let customerName=data.name;
          /*sessionStorage.setItem("customerId",customerId);
          sessionStorage.setitem("customerName",customerName); */
          alert("Login Successfull")
          window.location.href = "/admin-dashboard";
        }
        else{
            alert("Login Not Successfull");
        }
      }
    )
  }

}
