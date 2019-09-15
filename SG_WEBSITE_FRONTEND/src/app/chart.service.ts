import { Injectable, OnInit } from '@angular/core';
import { Chart } from "chart.js";
import { HttpClient, HttpHeaders } from '@angular/common/http';

interface record {
  id: number;
  temperature: number;
  fanstatus: string;
  timeRecorded: string;
}

const httpOptions = {
  headers: new HttpHeaders({
    'Content-Type':  'application/json',
    'Authorization': 'Basic ' + btoa('smart:garden')
  })
};

@Injectable({
  providedIn: 'root'
})
export class ChartService{

  private apiUrl = "http://23.97.147.23:3000/api"
  //private apiUrl ="http://localhost:3000/api"

  noOfDataPointsLimit = 15;

  temperatureChart: Chart;

  currentData= {
    temp : 0 ,
    fan: "N/A"
  };

  constructor(private http: HttpClient){
  }

  ngOnInit() {
  }

  addDataLast(chart, label:string, data: number) {
    chart.data.labels.push(label);
    chart.data.datasets.forEach((dataset) => {
      dataset.data.push(data);
    }); 
    chart.update();
  }

  removeDataFirst(chart) {
    chart.data.labels.shift();
    chart.data.datasets.forEach((dataset) => {
        dataset.data.shift();
    });
    chart.update();
  }

  updateChartByOnePoint(chart, label:string, data: number){

    this.addDataLast(chart, label, data);

    if ( chart.data.labels.length > this.noOfDataPointsLimit )
      this.removeDataFirst(chart);

  }

  async updateChartOnInit(chart){

    this.http.get<record[]>(this.apiUrl + "/current_records/15",httpOptions).subscribe( res => {
      for ( var i=0 ; i < res.length ; i++ ){
        this.updateChartByOnePoint(chart,res[i].timeRecorded,res[i].temperature)
      }
    })

  }

  async updateChartNew(chart){

    if (chart.data.labels.length == 0) {
      this.updateChartOnInit(chart);
    } else {
      this.http.get<record[]>(this.apiUrl + "/new_records_update",httpOptions).subscribe( res => {
        for ( var i=0 ; i < res.length ; i++ ){
          this.updateChartByOnePoint(chart,res[i].timeRecorded,res[i].temperature)
        }
      })
    }
  }

  async update_Temp_FanStatus(currData:{temp: number, fan: string, timestamp: string}) {
      this.http.get<record[]>(this.apiUrl + "/current_record",httpOptions).subscribe( res => {
      currData.fan = res[0].fanstatus;
      currData.temp = res[0].temperature;
      currData.timestamp= res[0].timeRecorded;
    })

  }

}
