//
//  Model.swift
//  TwoDirectionalScrollerA1
//
//  Created by admin on 7/13/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class Movie {
    var name:String
    var imageURL:String
    var movieDescription:String
    
    func updateImageURL() {
        let parameters:[String: AnyObject] = [
            "t": name,
            "y": "",
            "plot": "short",
            "r": "json"
        ]
        let omdbAPI = "https://www.omdbapi.com/"
        let URL = NSURL(string: omdbAPI)!
        let URLRequest = NSMutableURLRequest(URL: URL)
        URLRequest.HTTPMethod = "GET"
        
        Alamofire.request(.GET, URL, parameters: parameters).responseJSON() { response in
            guard let dataValue = response.result.value else { return }
            let json = JSON(dataValue)
            self.imageURL = json["Poster"].stringValue
            self.name = json["Title"].stringValue
            self.movieDescription = json["Plot"].stringValue
        }
    }
    
    init(name: String) {
        self.name = name
        self.imageURL = ""
        self.movieDescription = ""
        updateImageURL()
    }
}