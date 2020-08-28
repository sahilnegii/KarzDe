import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { HttpClient } from '@angular/common/http';
@Component({
  selector: 'app-user-dashboard',
  templateUrl: './user-dashboard.component.html',
  styleUrls: ['./user-dashboard.component.css']
})
export class UserDashboardComponent implements OnInit {
 
  constructor(private router : Router, private http: HttpClient) { }
  name: any;
  details: any;
  cust_Id=sessionStorage.getItem('customerId')
  ngOnInit(): void {
    this.name=sessionStorage.getItem('customerFirstName');
    
    
    this.http.post<any> ("http://localhost:8282/viewApplication",this.cust_Id).subscribe(data=>
    {
      console.log(data)
      this.details=data;
    })

  }
  onlogout(){
    this.router.navigate(['login'])
    sessionStorage.clear();
  }
}
