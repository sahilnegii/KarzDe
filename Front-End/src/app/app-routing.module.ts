import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

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


import { RegisterComponent } from './register/register.component'; 
import { LoginAdminComponent } from './login-admin/login-admin.component';
import { UserDashboardComponent} from './user-dashboard/user-dashboard.component';
import { AdminDashboardComponent} from './admin-dashboard/admin-dashboard.component';
import { AdminActionComponent } from './admin-action/admin-action.component';
import { RegisterSuccessComponent } from './register-success/register-success.component';
import { ApplicationApplyComponent } from './application-apply/application-apply.component';
const routes: Routes = [
  {path: '', redirectTo: '/index', pathMatch: 'full' },
  {path: 'index', component: IndexComponent },

  {path: 'about-us', component: AboutUsComponent },
  {path: 'login', component: LoginComponent },
  {path: 'features', component: FeaturesComponent },
  {path: 'application', component: ApplicationComponent },
  {path: 'application-form-completion', component: ApplicationFormCompletionComponent },
  {path: 'loan-tracker', component: LoanTrackerComponent },
  
  {path: 'faq', component: FaqComponent} ,

  {path: 'application-form-completion', component: ApplicationFormCompletionComponent} ,
  {path: 'register', component: RegisterComponent} ,
  {path: 'login-admin', component: LoginAdminComponent},
  {path: 'user-dashboard', component: UserDashboardComponent},
  {path: 'admin-dashboard', component: AdminDashboardComponent},
  {path: 'admin-action', component: AdminActionComponent} ,
  {path: 'register-success',component: RegisterSuccessComponent},
  {path: 'application-apply',component: ApplicationApplyComponent},
  {path: 'cal', component: CalComponent ,

  children: [
    {path: '', redirectTo: 'eligib', pathMatch: 'full'  },
    {path: 'eligib', component: EligibCalComponent },
    {path: 'emi', component: EmiCalComponent },
  ]
}
];


@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
