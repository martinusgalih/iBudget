//
//  itemCell.swift
//  iBudget
//
//  Created by Pelindung Giawa on 23/06/21.
//

import UIKit

class itemCell: UICollectionViewCell {

    @IBOutlet weak var textLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setData(text:String){
        self.textLabel.text = text
    }

}
