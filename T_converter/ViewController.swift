//
//  ViewController.swift
//  T_converter
//
//  Created by Macbook on 4.06.22.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var cinliusLabel: UILabel!
    
    @IBOutlet weak var farradeyLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!{
        didSet{
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    
    @IBAction func sliderChabged(_ sender: UISlider) {
        
        let tempratureCelsius = Int(round(sender.value))
        cinliusLabel.text = "\(tempratureCelsius)ºC"
        let fahrenheiTemp = Int(round((sender.value * 9 / 5) + 32))
        farradeyLabel.text = "\(fahrenheiTemp)ºF"
    }
    
    
}

