import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LoginComponent } from './login/login.component';
import { DashboardComponent } from './dashboard/dashboard.component';
import { MoradoresListarComponent } from './moradores/moradores-listar/moradores-listar.component';
import { NeedAuthGuard } from './auth.guard';
import { MoradoresComponent } from './moradores/moradores.component';
import { JazigosComponent } from './jazigos/jazigos.component';


const routes: Routes = [
  {
    path: '',
    component: LoginComponent
  },
  {
    path: '#',
    component: DashboardComponent,
    canActivate: [NeedAuthGuard]
  },  
  {
    path: 'dashboard',
    component: DashboardComponent,
    canActivate: [NeedAuthGuard]
  },
  {
    path: 'moradores',
    component: MoradoresComponent,
    canActivate: [NeedAuthGuard]
  },   
  {
    path: 'jazigos',
    component: JazigosComponent,
    canActivate: [NeedAuthGuard]
  },     
];

@NgModule({
  imports: [RouterModule.forRoot(routes, { useHash: true })],
  exports: [RouterModule]
})
export class AppRoutingModule { }
