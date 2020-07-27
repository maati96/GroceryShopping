//
//  StoreCell.swift
//  GroceryShopping
//
//  Created by Mohamed M3aty on 7/11/20.
//  Copyright © 2020 MohamedM3aty. All rights reserved.
//

import UIKit

class StoreCell: UITableViewCell,UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.register(UINib(nibName: "StoreCollectionCell", bundle: nil), forCellWithReuseIdentifier: "StoreCollectionCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.isPagingEnabled = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoreCollectionCell", for: indexPath) as! StoreCollectionCell
        cell.favoriteButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = StoreDetailVC()
        UIApplication.getTopViewController()?.navigationController?.pushViewController(vc, animated: true)
    }
    

}


