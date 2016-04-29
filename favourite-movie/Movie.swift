//
//  Movie.swift
//  favourite-movie
//
//  Created by Drew Westcott on 18/04/2016.
//  Copyright © 2016 Drew Westcott. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Movie: NSManagedObject {

    func setMovieImg(img: UIImage) {
        let data = UIImagePNGRepresentation(img)
        self.movieImage = data
    }
    
    func getMovieImage() -> UIImage {
        let img = UIImage(data: self.movieImage!)!
        return img
    }
}
