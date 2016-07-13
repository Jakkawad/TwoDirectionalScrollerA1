//
//  VideoCollectionViewCell.swift
//  TwoDirectionalScrollerA1
//
//  Created by admin on 7/13/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import AlamofireImage

class VideoCollectionViewCell: UICollectionViewCell {
 
    @IBOutlet weak var imageViewProduct:UIImageView!
    var movie:Movie? = nil {
        didSet {
            if let movie = movie,
                let url = NSURL(string: movie.imageURL) {
                self.imageViewProduct.af_setImageWithURL(url)
            }
        }
    }
    
}
