//
//  itemViewController.swift
//  iBudget
//
//  Created by Pelindung Giawa on 23/06/21.
//

import UIKit

class itemViewController: UIViewController {

    @IBOutlet weak var itemCollectionView: UICollectionView!
    
    let dataArray = ["Jan","Feb","Mar","Apr","Mei","Juni","Juli","Agu","Sep","Okt","Nov","Des"]
    var estimateWidth = 160.0
    var cellMarginSize = 16
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.itemCollectionView.delegate = self
        self.itemCollectionView.dataSource = self
        
        //Daftarin Cell
        self.itemCollectionView.register(UINib(nibName: "itemCell", bundle: nil), forCellWithReuseIdentifier: "itemCell")
        
        //SetupGrid View
        self.setupGridView()
    }
    func setupGridView(){
        let flow = itemCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        flow.minimumInteritemSpacing = CGFloat(self.cellMarginSize)
        flow.minimumLineSpacing = CGFloat(self.cellMarginSize)
    }
}

extension itemViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.dataArray.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemCell", for: indexPath) as! itemCell
        cell.setData(text : self.dataArray[indexPath.row])
        
        return cell
    }
}

extension itemViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = self.calculateWith()
        return CGSize(width: width, height: width)
    }
    
    func calculateWith() -> CGFloat {
        let estimatedWidth = CGFloat (estimateWidth)
        let cellCount = floor(CGFloat(self.view.frame.size.width / estimatedWidth))
        
        let margin = CGFloat(cellMarginSize*2)
        let width = (self.view.frame.size.width - CGFloat(cellMarginSize) * (cellCount - 1) - margin) / cellCount
        
        return width
    }
    
}
