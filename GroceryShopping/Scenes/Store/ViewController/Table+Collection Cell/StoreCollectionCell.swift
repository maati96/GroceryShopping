//
//  StoreCollectionCell.swift
//  GroceryShopping
//
//  Created by Mohamed M3aty on 7/11/20.
//  Copyright © 2020 MohamedM3aty. All rights reserved.
//

import UIKit

class StoreCollectionCell: UICollectionViewCell {
    
    var storeCell: StoreCell!
    
    
    @IBOutlet weak var favoriteButton: UIButton!
    class var customCell : StoreCollectionCell {
           let cell = Bundle.main.loadNibNamed("StoreCollectionCell", owner: self, options: nil)?.last
           return cell as! StoreCollectionCell
       }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }
    
    
    @IBAction func favoriteButtonTapped(_ sender: UIButton) {
     
    }
    
    
 
    

}
