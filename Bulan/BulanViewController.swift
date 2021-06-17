//
//  BulanViewController.swift
//  iBudget
//
//  Created by Pelindung Giawa on 17/06/21.
//

import Foundation
import UIKit

class BulanViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
    }
}

extension BulanViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dates.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BulanCollectionViewCell", for: indexPath) as! BulanCollectionViewCell
        return cell
    }
    
    
    
    
}
