//
//  MainViewController.swift
//  iBudget
//
//  Created by Martinus Galih Widananto on 16/06/21.
//

import UIKit

class MainViewController: UIViewController {


    var countFired: CGFloat = 0
    @IBOutlet weak var progressBar: plainProgressBar!
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var backButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       
// shadow for bgView
        bgView.layer.cornerRadius = 20
        bgView.layer.shadowColor = UIColor.black.cgColor
        bgView.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        bgView.layer.shadowOpacity = 0.2
        bgView.layer.shadowRadius = 4.0
        
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { Timer in
            self.countFired += 1
            DispatchQueue.main.async {
                self.progressBar.progress = min(0.03 * self.countFired, 1)
                if self.progressBar.progress == 1 {
                    Timer.invalidate()
            }
        }
            
        }
        
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
