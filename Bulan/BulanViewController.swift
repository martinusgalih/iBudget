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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        collectionView.layer.cornerRadius = 10
        
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
        return cell
    }
    
}

extension ViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 600, height: 500)
    }
}





