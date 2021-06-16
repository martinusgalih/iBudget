//
//  MainViewController.swift
//  iBudget
//
//  Created by Martinus Galih Widananto on 16/06/21.
//

import UIKit

class MainViewController: UIViewController {


   
    @IBOutlet weak var bgView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        bgView.layer.cornerRadius = 10
        bgView.clipsToBounds = true
        // Do any additional setup after loading the view.
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
