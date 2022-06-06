//
//  SecondViewController.swift
//  T_converter
//
//  Created by Macbook on 6.06.22.
//

import UIKit

class SecondViewController: UIViewController {
    
    var login: String?
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let login = self.login else {
            return
        }
        label.text = "Hello \(login)"
    }
    
    
    
    @IBAction func backButton(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
    
    
}


