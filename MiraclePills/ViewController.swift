//
//  ViewController.swift
//  MiraclePills
//
//  Created by David Ingram on 16/08/2016.
//  Copyright © 2016 David Ingram. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var labelCountry: UILabel!
    @IBOutlet weak var fieldCountry: UITextField!
    @IBOutlet weak var labelZipcode: UILabel!
    @IBOutlet weak var fieldZipcode: UITextField!

    @IBOutlet weak var imagePill: UIImageView!
    @IBOutlet weak var labelMiraclePills: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var enterName: UITextField!
    @IBOutlet weak var streetAddress: UILabel!
    @IBOutlet weak var enterAddress: UITextField!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var enterCity: UITextField!
    @IBOutlet weak var state: UILabel!
   
    @IBOutlet weak var buyNow: UIButton!

    @IBOutlet weak var successImage: UIImageView!
    
    
    
    let states = ["Alabama", "Alaska", "Kansas", "California", "New York", "Maine"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        labelCountry.isHidden = true
        fieldCountry.isHidden = true
        labelZipcode.isHidden = true
        fieldZipcode.isHidden = true
            }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        labelCountry.isHidden = false
        fieldCountry.isHidden = false
        labelZipcode.isHidden = false
        fieldZipcode.isHidden = false
        // a small change to test github
    }
    
    
    @IBAction func buyNow(_ sender: AnyObject) {
        successImage.isHidden = false
        imagePill.isHidden = true
        labelMiraclePills.isHidden = true
        price.isHidden = true
        divider.isHidden = true
        fullName.isHidden = true
        enterName.isHidden = true
        streetAddress.isHidden = true
        enterAddress.isHidden = true
        city.isHidden = true
        enterCity.isHidden = true
        state.isHidden = true
        buyNow.isHidden = true
        statePickerBtn.isHidden = true
        labelCountry.isHidden = true
        fieldCountry.isHidden = true
        labelZipcode.isHidden = true
        fieldZipcode.isHidden = true
    }
    
    
}

