//
//  SecondViewController.swift
//  PassingDataBetweenViewControllers
//
//  Created by Aman Meena on 22/02/19.
//  Copyright © 2019 Aman Meena. All rights reserved.
//

import UIKit

protocol PassDataToVC {
    func passData(str: String)
}
class SecondViewController: UIViewController {

    // Outlets
    @IBOutlet weak var textField: UITextField!
    
    
    
    // Variables
    var data = ""
    var delegate: PassDataToVC!
    
    // Constants
    
    
    
    // Actions
    @IBAction func passDataButtonTapped(_ sender: Any) {
        delegate.passData(str: textField.text!)
        navigationController?.popViewController(animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = data
    }

}
