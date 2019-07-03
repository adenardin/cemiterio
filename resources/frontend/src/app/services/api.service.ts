import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs'

@Injectable({
  providedIn: 'root'
})
export class ApiService {

  constructor(private http: HttpClient) {

  }

  login(email: string, password: string): Observable<any>{
    return this.http.post('http://localhost:8000/api/login', {
      email: email,
      password: password
    });
  }
}