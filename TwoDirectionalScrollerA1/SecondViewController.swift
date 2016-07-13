//
//  SecondViewController.swift
//  TwoDirectionalScrollerA1
//
//  Created by admin on 7/13/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import AlamofireImage

class SecondViewController: UIViewController {
    
    var movie:Movie? = nil
    
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var movieDescription: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        if let movie = movie {
            movieName.text = movie.name
            movieDescription.text = movie.movieDescription
            if let url = NSURL(string: movie.imageURL) {
                self.imageView.af_setImageWithURL(url)
            }
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
