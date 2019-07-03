import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { BsDropdownModule } from 'ngx-bootstrap/dropdown';
import { TooltipModule } from 'ngx-bootstrap/tooltip';
import { ModalModule } from 'ngx-bootstrap/modal';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http';
import { JwtModule } from '@auth0/angular-jwt';
import { LoginComponent } from './login/login.component';
import { FormsModule }   from '@angular/forms';
import { DashboardComponent } from './dashboard/dashboard.component';
import { NeedAuthGuard } from './auth.guard';
import { MoradoresComponent } from './moradores/moradores.component';
import { JazigosComponent } from './jazigos/jazigos.component';
import { MoradoresListarComponent } from './moradores/moradores-listar/moradores-listar.component';
import { JwtInterceptor } from './JwtInterceptor';
import { MoradoresFormComponent } from './moradores/moradores-form/moradores-form.component';

@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    DashboardComponent,
    MoradoresComponent,
    JazigosComponent,
    MoradoresListarComponent,
    MoradoresFormComponent,
  ],
  imports: [
    BrowserModule,
    BsDropdownModule.forRoot(),
    TooltipModule.forRoot(),
    ModalModule.forRoot(),    
    FormsModule,
    AppRoutingModule,
    HttpClientModule,
    JwtModule.forRoot({
      config: {
        tokenGetter: function  tokenGetter() {
          return     localStorage.getItem('access_token');},
          whitelistedDomains: ['localhost:3000'],
          blacklistedRoutes: ['http://localhost:3000/login']
        }
      })
    ],
  providers: [
    NeedAuthGuard,
    JwtInterceptor,
    {
      provide: HTTP_INTERCEPTORS,
      useClass: JwtInterceptor,
      multi:true
    }
  ],
  bootstrap: [AppComponent],
  exports: [BsDropdownModule, TooltipModule, ModalModule]
})
export class AppModule {}
