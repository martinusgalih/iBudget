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
