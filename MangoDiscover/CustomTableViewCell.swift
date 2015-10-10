//
//  CustomTableViewCell.swift
//  MangoDiscover
//
//  Created by Twins App on 11/10/15.
//  Copyright © 2015 7CStudio. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet var singerNameTxt: UILabel!
    @IBOutlet var singerPics: UIImageView!
    @IBOutlet var singerActTxt: UILabel!
    @IBOutlet var singerActNameText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func cellContent(index : Int, name: String, image : UIImage, singerAct: String, singerActName: String){
        self.singerNameTxt.text = name
        
        self.singerPics.image = image
        self.singerPics.layer.borderWidth = 1.0
        self.singerPics.layer.masksToBounds = false
        self.singerPics.layer.borderColor = UIColor.whiteColor().CGColor
        self.singerPics.layer.cornerRadius = singerPics.frame.size.width/2
        self.singerPics.clipsToBounds = true
        
        self.singerActTxt.text = singerAct
        self.singerActNameText.text = singerActName
    }
}
