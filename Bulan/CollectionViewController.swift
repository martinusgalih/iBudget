//
//  CollectionViewController.swift
//  iBudget
//
//  Created by Pelindung Giawa on 21/06/21.
//

import Foundation
import UIKit

class CollectionViewController: UICollectionViewController {
    
  
   
    
    var Array = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Array = ["Jan", "Feb", "Mar", "Apr", "Mei", "Jun", "Jul", "Agu", "Sep", "Okt", "Nov", "Des"]
        
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as UICollectionViewCell
        
        return cell
    }

}
