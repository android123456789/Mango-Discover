//
//  CustomTableViewCell.swift
//  MangoDiscover
//
//  Created by Twins App on 11/10/15.
//  Copyright © 2015 7CStudio. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell , UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet var singerNameTxt: UILabel!
    @IBOutlet var singerPics: UIImageView!
    @IBOutlet var heightConstraintCV: NSLayoutConstraint!
    @IBOutlet var genreCV: UICollectionView!
    @IBOutlet var actsCV: UICollectionView!
    @IBOutlet var genreCollectionView: UICollectionView!
    
    var genereArray = ["LIVE ARTIST", "PRODUCER", "LIVE ARTIST", "PRODUCER", "LIVE ARTIST", "PRODUCER", "LIVE ARTIST", "PRODUCER", "PRODUCER", "PRODUCER"]
    var actArray = ["Guitarist & Vocalist in MADBOY/MINK", "Frontman, Guitarist & Vocalist in THE PULP SOCIETY", "Bassist in KONIAC NET", "Bassist in LAST LIGHT", "Guitarist & Vocalist in MADBOY/MINK", "Frontman, Guitarist & Vocalist in THE PULP SOCIETY", "Bassist in KONIAC NET", "Bassist in LAST LIGHT","Bassist in KONIAC NET", "Bassist in LAST LIGHT"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.genreCV.delegate = self
        self.genreCV.dataSource = self
        
        self.actsCV.delegate = self
        self.actsCV.dataSource = self
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func cellContent(index : Int, name: String, image : UIImage){
        
        self.singerNameTxt.text = name
        self.singerPics.image = image
        self.singerPics.layer.borderWidth = 1.0
        self.singerPics.layer.masksToBounds = false
        self.singerPics.layer.borderColor = UIColor.whiteColor().CGColor
        self.singerPics.layer.cornerRadius = singerPics.frame.size.width/2
        self.singerPics.clipsToBounds = true
    }
    
    override func layoutSubviews() {
        //self.heightConstraintCV.constant = self.genreCV.collectionViewLayout.collectionViewContentSize().height
        self.heightConstraintCV.constant = self.actsCV.collectionViewLayout.collectionViewContentSize().height
        self.contentView.setNeedsLayout()
        self.contentView.layoutIfNeeded()
    }
    
    override func didMoveToSuperview() {
        //self.heightConstraintCV.constant = self.genreCV.collectionViewLayout.collectionViewContentSize().height
        self.heightConstraintCV.constant = self.actsCV.collectionViewLayout.collectionViewContentSize().height
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == self.genreCollectionView {
            return genereArray.count
            
        }
        else {
            return self.actArray.count
        }
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell : UICollectionViewCell?
        
        
        if collectionView == self.genreCollectionView {
            let genreCell = collectionView.dequeueReusableCellWithReuseIdentifier("genrecell", forIndexPath: indexPath) as! CustomCollectionViewCell
            genreCell.cellContent(indexPath.row, name: genereArray[indexPath.row])
            cell = genreCell
        }
        else {
            let actsCell = collectionView.dequeueReusableCellWithReuseIdentifier("actsCell", forIndexPath: indexPath) as! ActNameCollectionViewCell
            actsCell.cellContent(indexPath.row, name: actArray[indexPath.row])
            cell = actsCell
        }
        return cell!
    }
    
    func collectionView(collectionView: UICollectionView, didEndDisplayingSupplementaryView view: UICollectionReusableView, forElementOfKind elementKind: String, atIndexPath indexPath: NSIndexPath) {
        //self.heightConstraintCV.constant = self.genreCV.collectionViewLayout.collectionViewContentSize().height
        self.heightConstraintCV.constant = self.actsCV.collectionViewLayout.collectionViewContentSize().height
    }
    
}
