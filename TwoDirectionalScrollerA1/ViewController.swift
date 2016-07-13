//
//  ViewController.swift
//  TwoDirectionalScrollerA1
//
//  Created by admin on 7/13/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView:UITableView!
    
    var categoryies = ["Action", "Drama", "Science Fiction", "Kids", "Horror"]
    
    func delay(seconds seconds: Double, completion:()->()) {
        let popTime = dispatch_time(DISPATCH_TIME_NOW, Int64 (Double(NSEC_PER_SEC) * seconds ))
        dispatch_after(popTime, dispatch_get_main_queue()) {
            completion()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delay(seconds: 1.0) {
            self.tableView.reloadData()
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let videoCell = sender as? VideoCollectionViewCell,
            let videoDetailPage = segue.destinationViewController as? SecondViewController {
            let movie = videoCell.movie
            print("Movie = \(movie)")
            print("Cell = \(videoCell)")
            videoDetailPage.movie = movie
        }
    }

}

extension ViewController:UITableViewDelegate { }

extension ViewController:UITableViewDataSource {
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return Catalog.sharedInstance.genres[section].name
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return Catalog.sharedInstance.genres.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0") as! CategoryTableViewCell
        cell0.genre = Catalog.sharedInstance.genres[indexPath.section]
        return cell0
        /*
        if indexPath.row == 0 {
            let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0") as! CategoryTableViewCell

            return cell0
        } else {
            let cell1 = tableView.dequeueReusableCellWithIdentifier("tableCell0") as! CategoryTableViewCell
            
            return cell1
        }
        */
    }
}