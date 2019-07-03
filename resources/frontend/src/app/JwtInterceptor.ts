import { Injectable } from '@angular/core';
import { HttpRequest, HttpHandler, HttpEvent, HttpInterceptor } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable()
export class JwtInterceptor implements HttpInterceptor {

    intercept(request: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {
        const TOKEN = localStorage.getItem('TOKEN')
        if (TOKEN) {
            request = request.clone({
                setHeaders: {
                    Authorization: `Bearer ${TOKEN}`
                }
            });
        } else {
            request = request.clone({ });            
        }

        return next.handle(request);
    }
}