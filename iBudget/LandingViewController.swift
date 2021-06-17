//
//  LandingViewController.swift
//  iBudget
//
//  Created by San on 17/06/21.
//

import UIKit

class LandingViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent componenent: Int) -> String? {
        return pickData[row]
    }
    

    @IBOutlet weak var pickerCurrency: UIPickerView!
    @IBOutlet weak var textIncome: UITextField!
    @IBOutlet weak var buttonStart: UIButton!
    
    var pickData: [String] = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerCurrency.delegate = self
        self.pickerCurrency.dataSource = self
        
        let myColor = UIColor.black
        textIncome.layer.cornerRadius = 10
        textIncome.layer.borderWidth = 2.0
        textIncome.layer.borderColor = myColor.cgColor
        buttonStart.layer.cornerRadius = 15
        
        pickData = ["USD", "EUR", "JPY", "GBP", "AUD", "CAD", "IDR", "INR", "MYR", "SAR"]

        // Do any additional setup after loading the view.
    }
    

    @IBAction func fillIncome(_ sender: Any) {
        
    }
}
