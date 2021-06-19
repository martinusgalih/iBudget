//
//  plainProgressBar.swift
//  iBudget
//
//  Created by Martinus Galih Widananto on 16/06/21.
//

import UIKit
@IBDesignable
class plainProgressBar: UIView {
    @IBInspectable var color: UIColor? = .gray
    var progress: CGFloat = 0 {
        didSet {
            setNeedsDisplay()
        }
    }
    
   
    

    override func draw(_ rect: CGRect) {
        backgroundColor?.setFill()
        UIBezierPath(roundedRect: rect, cornerRadius: rect.height * 0.25).fill()
        
        let backgroundMask = CAShapeLayer()
        backgroundMask.path = UIBezierPath(roundedRect: rect, cornerRadius: rect.height * 0.25).cgPath
        layer.mask = backgroundMask
        
        let progressRect = CGRect(origin: .zero, size: CGSize(width: rect.width * progress, height: rect.height))
        let progressLayer = CALayer()
        progressLayer.frame = progressRect
        
        layer.addSublayer(progressLayer)
        progressLayer.backgroundColor = color?.cgColor
        
        
    }
   
    
    
 private let progressLayer = CALayer()
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.addSublayer(progressLayer)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        layer.addSublayer(progressLayer)
    }
    
    
}
