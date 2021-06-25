//
//  BulanViewController.swift
//  iBudget
//
//  Created by Pelindung Giawa on 17/06/21.
//

import Foundation
import UIKit

class BulanViewController: UIViewController, UICollectionViewDelegate{

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var rewardButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        rewardButton.layer.shadowColor = UIColor.black.cgColor
        rewardButton.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        rewardButton.layer.shadowOpacity = 0.5
        rewardButton.layer.cornerRadius = 10
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(dates[indexPath.row].Bulan)
    }
    
}

extension BulanViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dates.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BulanCollectionViewCell", for: indexPath) as! BulanCollectionViewCell
        cell.setup(with: dates[indexPath.row])
        cell.shadowDecorate()
        return cell
    }
    
}

extension BulanViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 120)
    }
}





