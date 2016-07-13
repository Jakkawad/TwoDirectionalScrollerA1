//
//  Catalog.swift
//  TwoDirectionalScrollerA1
//
//  Created by admin on 7/13/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import Foundation

class Catalog {
    static let sharedInstance = Catalog()
    let genres:[Genre]
    
    init() {
        // action
        let rambo = Movie(name: "Rambo")
        let dieHard = Movie(name: "Die Hard")
        let avengers = Movie(name: "The Avengers")
        let bourneIdentity = Movie(name: "Bourne Identity")
        let speed = Movie(name: "Speed")
        let action = Genre(name: "Action", movies: [rambo, dieHard, avengers, bourneIdentity, speed])
        
        // drama
        let forrestGump = Movie(name: "Forrest Gump")
        let shawshank = Movie(name: "Shawshank Redemption")
        let titanic = Movie(name: "Titanic")
        let theflase = Movie(name: "The Flash")
        let drama = Genre(name: "Drama", movies: [forrestGump, shawshank, titanic, theflase])
        
        // science fiction
        let matrix = Movie(name: "The Matrix")
        let terminator = Movie(name: "The Terminator")
        let gameOfThrones = Movie(name: "Game of Thrones")
        let ironMan = Movie(name: "Iron Man")
        let scienceFiction = Genre(name: "Science Fiction", movies: [matrix, terminator, gameOfThrones, ironMan])
        
        // Kids
        let insideOut = Movie(name: "Inside Out")
        let toyStory = Movie(name: "Toy Story")
        let up = Movie(name: "UP")
        let findingNemo = Movie(name: "Finding Nemo")
        let kids = Genre(name: "Genre", movies: [insideOut, toyStory, up, findingNemo])
        
        genres = [action, drama, scienceFiction, kids]
    }
}