//
//  CategoryTableViewCell.swift
//  TwoDirectionalScrollerA1
//
//  Created by admin on 7/13/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView:UICollectionView!
    
    var dataArray = ["A", "B", "C", "D", "E", "F", "G"]
    
    var genre:Genre? = nil {
        didSet {
            collectionView.reloadData()
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension CategoryTableViewCell:UICollectionViewDataSource {
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return genre!.movies.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell0 = collectionView.dequeueReusableCellWithReuseIdentifier("collectCell0", forIndexPath: indexPath) as! VideoCollectionViewCell
        if let genre = genre {
            cell0.movie = genre.movies[indexPath.row]
        }
        //cell0.tag = indexPath.row
        //print(cell0.tag)
        return cell0
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        //
    }
}

extension CategoryTableViewCell:UICollectionViewDelegateFlowLayout {
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        /*
        let itemPerRow:CGFloat = 4
        let hardCodedPadding:CGFloat = 5
        let itemWidth = (collectionView.bounds.width / itemPerRow) - hardCodedPadding
        let itemHeight = collectionView.bounds.height - (2 * hardCodedPadding)
        return CGSize(width: itemWidth, height: itemHeight)
        */
        let itemPerRow:CGFloat = 4
        let hardCodedPadding:CGFloat = 5
        let itemHeight = collectionView.bounds.height - (2 * hardCodedPadding)
        let itemWidth = itemHeight * 300 / 444
        
        return CGSize(width: itemWidth, height: itemHeight)
    }
}