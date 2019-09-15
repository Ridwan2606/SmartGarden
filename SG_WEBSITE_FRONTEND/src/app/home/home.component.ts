import { Component, OnInit } from '@angular/core';
import { ChartService } from '../chart.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  currentData= {
    temp : 0 ,
    fan: "N/A",
    timestamp: "N/A"
  };

  constructor(private chartservice: ChartService) { }

  ngOnInit() {
    
    let timerId = setInterval(() => {
      this.chartservice.update_Temp_FanStatus(this.currentData);
    }
    , 2000);
  }

}
