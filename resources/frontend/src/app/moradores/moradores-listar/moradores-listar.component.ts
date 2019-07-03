import { Component, OnInit } from '@angular/core';
import { MoradoresService } from 'src/app/services/moradores.service';

@Component({
  selector: 'app-moradores-listar',
  templateUrl: './moradores-listar.component.html',
  styleUrls: ['./moradores-listar.component.css']
})

export class MoradoresListarComponent implements OnInit {
  
  private moradores: any[] = []
  
  constructor(
    private moradoresService: MoradoresService
  ) { }

  ngOnInit() {
    this.moradoresService.selecionarTodosMoradores().subscribe(response => {
      if(response.moradores){
        response.moradores.forEach(morador => {
          this.moradores.push(morador)
        });
      }
    });
  }
}