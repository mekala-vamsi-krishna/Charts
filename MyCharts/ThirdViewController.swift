//
//  ViewController.swift
//  MyCharts
//
//  Created by Mekala Vamsi Krishna on 27/08/21.
//

import UIKit
import Charts

class ThirdViewController: UIViewController {

    @IBOutlet weak var barView: BarChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createChart()
    }
    
    private func createChart() {
        //create barchart
        let barChart = BarChartView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.width))
        //configure the axis
        let xAxis = barChart.xAxis
        let rightAxis = barChart.rightAxis
        //configure the legend
        let legend = barChart.legend
        //supply data
        var entries = [BarChartDataEntry]()
        for x in 0..<10 {
            entries.append(
                BarChartDataEntry(
                    x: Double(x), y: Double.random(in: 0...30)
                )
            )
        }
        let set = BarChartDataSet(entries: entries, label: "Student 1")
        set.colors = [
            NSUIColor(cgColor: UIColor.systemBlue.cgColor),
            NSUIColor(cgColor: UIColor.systemYellow.cgColor),
            NSUIColor(cgColor: UIColor.systemOrange.cgColor),
            NSUIColor(cgColor: UIColor.systemPink.cgColor),
            NSUIColor(cgColor: UIColor.systemTeal.cgColor)

        ]
        
        
        let data = BarChartData(dataSet: set)
        
        barChart.data = data
        
        view.addSubview(barChart)
        barChart.center = view.center
    }
}

