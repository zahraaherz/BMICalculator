//
//  ResultViewController.swift
//  BMICalculator
//
//  Created by Zahraa Herz on 14/01/2023.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiResults : String?
    @IBOutlet var advice: UILabel!
    @IBOutlet var bmiResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiResult.text = bmiResults
        
        let bmi = Double(bmiResults ?? "0.00")
        if bmi ?? 0.0 < 18.5 {
            advice.text = "underwight"
        } else if bmi ?? 0.0 > 18.5 && bmi ?? 0.0 < 24.9 {
            advice.text = "normal"
        } else if bmi ?? 0.0  > 24.9{
            advice.text = "overwight"

        }
    }
    
    @IBAction func recalculateButton(_ sender: Any) {
        
        self.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
