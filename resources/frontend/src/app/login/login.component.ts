
import {Component} from '@angular/core';
import {ApiService} from '../services/api.service';
import {CustomerService} from '../customer.service';
import {Router} from '@angular/router';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent {

  email = "test@email.com";
  password = " secret";

  constructor(
    private api: ApiService, 
    private customer: CustomerService, 
    private router: Router
  ){}

  onSubmit(person: any){
    this.api.login(person.email, person.password).subscribe(
      response => {
        if (response.token) {
          this.customer.setToken(response.token);
          this.router.navigateByUrl('/dashboard');
        }
      },
      error => {
        console.log(error)
      }
    );
  }

}