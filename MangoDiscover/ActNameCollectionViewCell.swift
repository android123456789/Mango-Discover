//
//  ActNameCollectionViewCell.swift
//  MangoDiscover
//
//  Created by Twins App on 13/10/15.
//  Copyright © 2015 7CStudio. All rights reserved.
//

import UIKit

class ActNameCollectionViewCell: UICollectionViewCell {
    @IBOutlet var actNameTxt: UILabel!
    
    func cellContent(index: Int, name: String){
        self.actNameTxt.text = name
    }
}
