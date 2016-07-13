//
//  Genre.swift
//  TwoDirectionalScrollerA1
//
//  Created by admin on 7/13/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import Foundation

class Genre {
    let name:String
    let movies:[Movie]
    
    init(name: String, movies: [Movie]) {
        self.name = name
        self.movies = movies
    }
}