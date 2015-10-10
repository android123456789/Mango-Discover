//
//  CustomCollectionViewCell.swift
//  MangoDiscover
//
//  Created by Twins App on 11/10/15.
//  Copyright © 2015 7CStudio. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var genreTxt: UILabel!

    func cellContent(index: Int, name: String){
        self.genreTxt.text = name
    }
}
