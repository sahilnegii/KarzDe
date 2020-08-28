import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { ReactiveFormsModule } from '@angular/forms'; 

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { CalComponent } from './cal/cal.component';
import { AboutUsComponent } from './about-us/about-us.component';
import { ApplicationComponent } from './application/application.component';
import { EligibCalComponent } from './eligib-cal/eligib-cal.component';
import { EmiCalComponent } from './emi-cal/emi-cal.component';
import { FaqComponent } from './faq/faq.component';
import { FeaturesComponent } from './features/features.component';
import { IndexComponent } from './index/index.component';
import { LoginComponent } from './login/login.component';
import { ApplicationFormCompletionComponent } from './application-form-completion/application-form-completion.component';
import { LoanTrackerComponent } from './loan-tracker/loan-tracker.component';

import { HttpClientModule } from "@angular/common/http";


import { RegisterComponent } from './register/register.component';
import { LoginAdminComponent } from './login-admin/login-admin.component';
import { UserDashboardComponent } from './user-dashboard/user-dashboard.component';
import { AdminDashboardComponent } from './admin-dashboard/admin-dashboard.component';
import { AdminActionComponent } from './admin-action/admin-action.component';
import { RegisterSuccessComponent } from './register-success/register-success.component';
import { ApplicationApplyComponent } from './application-apply/application-apply.component';







@NgModule({
  declarations: [
    AppComponent,
    CalComponent,
    AboutUsComponent,
    ApplicationComponent,
    EligibCalComponent,
    EmiCalComponent,
    FaqComponent,
    FeaturesComponent,
    IndexComponent,
    LoginComponent,
    ApplicationFormCompletionComponent,
    LoanTrackerComponent,
    RegisterComponent,
    LoginAdminComponent,
    UserDashboardComponent,
    AdminDashboardComponent,
    AdminActionComponent,
    RegisterSuccessComponent,
    ApplicationApplyComponent
  ],
  imports: [
    FormsModule,
    BrowserModule,
    AppRoutingModule,
    ReactiveFormsModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
