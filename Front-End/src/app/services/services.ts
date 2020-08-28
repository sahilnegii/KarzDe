import { Injectable } from '@angular/core';
import { Customer } from "src/app/models/customer";
import { HttpClient } from "@angular/common/http";
import { Login } from "src/app/models/login";
import { Observable } from 'rxjs';
import { AdminLogin } from '../models/AdminLogin';

@Injectable({
  providedIn: 'root'
})
export class Service {

  loginAdmin(login:AdminLogin):Observable<any>{
    let url="http://localhost:8282/adminLogin";
    return this.http.post(url,login);
  }

  constructor(private http: HttpClient) { }

  registerACustomer(customer: Customer){
    var url="http://localhost:8282//registerUser";
    return this.http.post(url,customer);
  }

  loginACustomer(login :Login):Observable<any>{
    var url="http://localhost:8282/loginUser";
    return this.http.post(url,login);
  }
  
}
