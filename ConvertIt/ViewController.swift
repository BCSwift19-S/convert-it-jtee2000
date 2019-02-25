//
//  ViewController.swift
//  ConvertIt
//
//  Created by Jason Tee on 2/24/19.
//  Copyright © 2019 Jason Tee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var formulaArray = ["miles to kilometers",
                        "kilomters to miles",
                        "feet to meters",
                        "yards to meters",
                        "meters to feet",
                        "meters to yards"]

    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var fromUnitsLabel: UILabel!
    @IBOutlet weak var formulaPicker: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        formulaPicker.delegate = self
        formulaPicker.dataSource = self

    }

    @IBAction func convertButtonPressed(_ sender: UIButton) {
    }
    
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return formulaArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return formulaArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        fromUnitsLabel.text = formulaArray[row]
    }
    
}
