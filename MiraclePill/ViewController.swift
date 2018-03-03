//
//  ViewController.swift
//  MiraclePill
//
//  Created by ZED on 1/5/17.
//  Copyright © 2017 ZED. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {

    @IBOutlet weak var stateButton: UIButton!
    
    @IBOutlet weak var statePicker: UIPickerView!
    
    let state=["Alsks","NY","Los Angles","California","Arknsas"]
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        self.statePicker.dataSource=self
        statePicker.delegate=self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonActi(_ sender: Any) {
        statePicker.isHidden=false
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return state.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return state[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        stateButton.setTitle(state[row], for: UIControlState.normal) //normal to change the button to state name
        statePicker.isHidden=true
    }
    
    func returnKey(_ textField : UITextField) -> Bool{
        
        textField.resignFirstResponder()
        return true
    
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return (true)
    }
}

