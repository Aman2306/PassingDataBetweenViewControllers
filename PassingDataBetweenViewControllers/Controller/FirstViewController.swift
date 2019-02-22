//
//  ViewController.swift
//  PassingDataBetweenViewControllers
//
//  Created by Aman Meena on 22/02/19.
//  Copyright © 2019 Aman Meena. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    // Outlets
    @IBOutlet weak var textField: UITextField!
    
    
    
    // Variables
    
    
    // Constants
    
    
    
    // Actions
    @IBAction func passDataButtonTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        vc?.data = textField.text!
        vc?.delegate = self
        navigationController?.pushViewController(vc!, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension FirstViewController: PassDataToVC {
    func passData(str: String) {
        textField.text = str
    }
}
