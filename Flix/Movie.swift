//
//  Movie.swift
//  Flix
//
//  Created by Avishek Thapa Magar on 10/5/18.
//  Copyright © 2018 Avishek Thapa Magar. All rights reserved.
//

import Foundation
import UIKit
import AlamofireImage

class Movie {
    var title: String
    var overview: String
    var releaseDate: String
    var baseURLString: String
    var posterPathString: String
    var backdropPathString: String
    var backdropURL: URL
    var posterURL: URL
    
    class func movies(dictionaries: [[String: Any]]) -> [Movie] {
        var movies: [Movie] = []
        for dictionary in dictionaries {
            let movie = Movie(dictionary: dictionary)
            movies.append(movie)
        }
        
        return movies
    }
    
    init(dictionary: [String: Any]) {
        title = dictionary["title"] as? String ?? "No title"
        
        // Set the rest of the properties
        overview = dictionary["overview"] as? String ?? "No Description";
        releaseDate = dictionary["release_date"] as? String ?? "No Date";
        
        //Getting the poster and backdrop images
        baseURLString = "https://image.tmdb.org/t/p/w500";
        posterPathString = dictionary["poster_path"] as! String
        backdropPathString = dictionary["backdrop_path"] as! String
        posterURL = URL(string: baseURLString + posterPathString)!
        backdropURL = URL(string: baseURLString + backdropPathString)!
    }
}
