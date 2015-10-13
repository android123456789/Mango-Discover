//
//  ViewController.swift
//  MangoDiscover
//
//  Created by Twins App on 11/10/15.
//  Copyright © 2015 7CStudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    var singerNameArray = ["SONU NIGAM", "HIMESH RESHAMIYA", "ATIF ASLAM", "ALI JAFAR", "MIKA SINGH", "HONNY SINGH"]
    var singerPicsArray = ["sonu", "himesh", "atif", "ali", "mika", "honney"]
    
    
    @IBOutlet var usersTableView: UITableView!
    @IBOutlet var genreCV: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.usersTableView.reloadData()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.usersTableView.reloadData()
        self.usersTableView.layoutIfNeeded()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return singerNameArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! CustomTableViewCell
        
        tableViewCell.cellContent(indexPath.row, name: singerNameArray[indexPath.row], image: UIImage(named: singerPicsArray[indexPath.row])!)
        
        return tableViewCell
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let view = UIView()
        
//      actsCV.frame = CGRectMake(0, 0, self.view.bounds.width, 162)
//      view.addSubview(actsCV)
        
        return view
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        var collectionViewRowCount : CGFloat = 0
        
        
        if CGFloat(12) % 3 == 0 {
            collectionViewRowCount = CGFloat(12) / 3
        }
        else {
            collectionViewRowCount = (CGFloat(12)) + 1
        }
        
        let height : CGFloat = (collectionViewRowCount * 10) + ((collectionViewRowCount - 1) * 10) + 580
        
        return height;
        
    }
    
}

