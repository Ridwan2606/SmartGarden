
import { Component,OnInit} from '@angular/core';
import { ChartService } from './chart.service';
import { Chart } from "chart.js";

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})

export class AppComponent implements OnInit{

  title = 'Charts';

  temperatureChart: Chart;

  constructor(private chartservice: ChartService){
  }

  ngOnInit(){

    this.temperatureChart = new Chart('lineChart', {
      type: 'line',
      data: {
        labels: [],
        datasets: [{
         label: 'in degrees Celcius',
         data: [],
         fill:false,
         lineTension:0.2,
         borderColor:"red",
         borderWidth: 1
        }]
      }, 
      options: {
        responsive: true,
        title:{
         text:"TEMPERATURE",
         display:true
        },
      scales: {
         yAxes: [{
             ticks: {
                 beginAtZero:false
             }
         }]
      }
      }
    });;
    
    let timerId = setInterval(() => {
      this.chartservice.updateChartNew(this.temperatureChart);
    }
    , 2000);

  }
}


