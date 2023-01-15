//
//  ViewController.swift
//  BMICalculator
//
//  Created by Zahraa Herz on 13/01/2023.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet var hightMeter: UILabel!
    @IBOutlet var hightSlide: UISlider!
    @IBOutlet var widthKg: UILabel!
    @IBOutlet var widthSlide: UISlider!
    
    var resultsForBmi = "0.00"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func hightSlideR(_ sender: UISlider) {
        let slideValue = String(format: "%.2f", sender.value)
        hightMeter.text = slideValue + "M"
    }
    
    @IBAction func widthSlider(_ sender: UISlider) {
        let slideValue = Int(sender.value)
        widthKg.text = "\(slideValue) KG"
    }
    
    @IBAction func CalculateButton(_ sender: Any) {
        
        let hight = hightSlide.value
        let width = widthSlide.value
        let bmi = width / (hight * hight)
        resultsForBmi = String(format: "%.2f", bmi)
        performSegue(withIdentifier: "goToResult", sender: self)
//        let secondVC = SecoundViewController()
//        secondVC.bmiValue = String(bmi)
//
//        self.present(secondVC, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let distinationVC = segue.destination as! ResultViewController
            distinationVC.bmiResults = resultsForBmi

        }
    }
}

