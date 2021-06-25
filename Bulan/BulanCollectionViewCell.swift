//
//  BulanCollectionViewCell.swift
//  iBudget
//
//  Created by Pelindung Giawa on 17/06/21.
//

import UIKit

class BulanCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var bulanView: UILabel!
    @IBOutlet weak var persenLabel: UILabel!
    
    func setup(with date: Date) {
        bulanView.text = date.Bulan
        persenLabel.text = date.persen
        
    }
}

extension UICollectionViewCell {
    func shadowDecorate() {
        let radius: CGFloat = 10
        contentView.layer.cornerRadius = 30
        contentView.layer.borderWidth = 0
        contentView.layer.borderColor = UIColor.clear.cgColor
        contentView.layer.masksToBounds = true
    
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 1.0)
        layer.shadowRadius = 2.0
        layer.shadowOpacity = 0.5
        layer.masksToBounds = false
        layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: radius).cgPath
        layer.cornerRadius = radius
    }
}
