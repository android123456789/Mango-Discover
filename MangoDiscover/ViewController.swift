//
//  ViewController.swift
//  MangoDiscover
//
//  Created by Twins App on 11/10/15.
//  Copyright © 2015 7CStudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UICollectionViewDataSource, UICollectionViewDelegate {

    var singerNameArray = ["SONU NIGAM", "HIMESH RESHAMIYA", "ATIF ASLAM", "ALI JAFAR", "MIKA SINGH", "HONNY SINGH"]
    var singerPicsArray = ["sonu", "himesh", "atif", "ali", "mika", "honney"]
    var genereArray = ["LIVE ARTIST", "PRODUCER"]
    var actArray = ["Guitarist & Vocalist in", "Frontman, Guitarist & Vocalist in", "Guitarist & Producer in", "Bassist & Guitarist & Vocalist in", "Bassist in & Frontman, Guitarist", "Guitarist & Vocalist in"]
    var actName = ["MADBOY/MINK", "THE PULP SOCIETY", "DUALIST INQUIRY", "KONIAC NET", "LAST LIGHT", "DJ"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return singerNameArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! CustomTableViewCell
        
//        if(indexPath.row == 0){
//            //actArray = ["Guitarist & Vocalist in MADBOY/MINK", "Frontman, Guitarist & Vocalist in THE PULP SOCIETY", "", "", ""]
//        }
//        else if(indexPath.row == 1){
//            //actArray = ["Guitarist & Producer in DUALIST INQUIRY", "","","",""]
//        }
//        else if(indexPath.row == 2){
//            //actArray = ["Bassist in KONIAC NET", "Bassist in LAST LIGHT","","",""]
//        }
        tableViewCell.cellContent(indexPath.row, name: singerNameArray[indexPath.row], image: UIImage(named: singerPicsArray[indexPath.row])!, singerAct: actArray[indexPath.row], singerActName: actName[indexPath.row])
        
        return tableViewCell
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return genereArray.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("genrecell", forIndexPath: indexPath) as! CustomCollectionViewCell
        
        cell.cellContent(indexPath.row, name: genereArray[indexPath.row])
        
        return cell
    }
}

