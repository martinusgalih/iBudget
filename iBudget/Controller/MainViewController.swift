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
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var mainImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        mainImageView.animationImages = 
    
         view.addSubview(mainImageView)
         mainImageView.startAnimating()
        mainImageView.animationDuration = 3
        mainImageView.animationRepeatCount = 1
        
// shadow for bgView
        bgView.layer.cornerRadius = 20
        bgView.layer.shadowColor = UIColor.black.cgColor
        bgView.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        bgView.layer.shadowOpacity = 0.5
        bgView.layer.shadowRadius = 4.0
        
        addButton.layer.cornerRadius = 10
        
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
    

    
    
    
    
    

}


