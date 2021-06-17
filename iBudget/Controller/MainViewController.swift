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
    override func viewDidLoad() {
        super.viewDidLoad()
        bgView.layer.cornerRadius = 10
        bgView.clipsToBounds = true
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
