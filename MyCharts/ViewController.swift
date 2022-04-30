//
//  ViewController.swift
//  MyCharts
//
//  Created by Mekala Vamsi Krishna on 27/08/21.
//

import UIKit
import Charts

class ViewController: UIViewController {

    @IBOutlet weak var pieView: PieChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpChart()
    }
    
    func setUpChart() {
        pieView.chartDescription?.enabled = false
        pieView.drawHoleEnabled = false
        pieView.rotationAngle = 0
        pieView.rotationEnabled = true
        pieView.isUserInteractionEnabled = true
        
        //pieView.legend.enabled = false
        
        var entries: [PieChartDataEntry] = Array()
        
        entries.append(PieChartDataEntry(value: 90.0, label: "Student 1"))
        entries.append(PieChartDataEntry(value: 74.0, label: "Student 2"))
        entries.append(PieChartDataEntry(value: 97.0, label: "Student 3"))
        entries.append(PieChartDataEntry(value: 37.0, label: "Student 4"))
        entries.append(PieChartDataEntry(value: 64.0, label: "Student 5"))
        
        let dataSet = PieChartDataSet(entries: entries, label: "")
        let c1 = NSUIColor(cgColor: UIColor.systemBlue.cgColor)
        let c2 = NSUIColor(cgColor: UIColor.systemGreen.cgColor)
        let c3 = NSUIColor(cgColor: UIColor.systemRed.cgColor)
        let c4 = NSUIColor(cgColor: UIColor.systemYellow.cgColor)
        let c5 = NSUIColor(cgColor: UIColor.systemTeal.cgColor)

        dataSet.colors = [c1, c2, c3, c4, c5]
        dataSet.drawValuesEnabled = false
        
        pieView.data = PieChartData(dataSet: dataSet)
    }


}

