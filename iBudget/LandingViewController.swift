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
        textIncome.keyboardType = .numberPad
        buttonStart.layer.cornerRadius = 15
        
        pickData = ["USD", "EUR", "JPY", "GBP", "AUD", "CAD", "IDR", "INR", "MYR", "SAR"]
        
        textIncome.addTarget(self, action: #selector(self.textIncomeFilter), for: .editingChanged)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
            view.addGestureRecognizer(tap)

        
        
        // call the 'keyboardWillShow' function when the view controller receive the notification that a keyboard is going to be shown
            NotificationCenter.default.addObserver(self, selector: #selector(LandingViewController.keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
          
              // call the 'keyboardWillHide' function when the view controlelr receive notification that keyboard is going to be hidden
            NotificationCenter.default.addObserver(self, selector: #selector(LandingViewController.keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)

        // Do any additional setup after loading the view.
    }
    @objc private func textIncomeFilter(_ textIncome: UITextField){
        if let text = textIncome.text, let intText = Int(text){
            textIncome.text = "\(intText)"
        }else{
            textIncome.text = ""
        }
    }
    @objc func keyboardWillShow(notification: NSNotification) {
        guard ((notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue) != nil else {
           // if keyboard size is not available for some reason, dont do anything
           return
        }
        self.view.frame.origin.y = 0 - 120
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
      // move back the root view origin to zero
      self.view.frame.origin.y = 0
    }
    
    //dismiss keyboard
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
}
