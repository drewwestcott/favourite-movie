//
//  MovieCell.swift
//  favourite-movie
//
//  Created by Drew Westcott on 18/04/2016.
//  Copyright © 2016 Drew Westcott. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieReason: UILabel!
    @IBOutlet weak var movieThumb: UIImageView!
    
    func configureCell(movie: Movie) {
        movieTitle.text = movie.movieTitle
        movieReason.text = movie.reasonLiked
        
        movieThumb.image = movie.getMovieImage()
        movieThumb.layer.cornerRadius = movieThumb.frame.width / 10
        movieThumb.clipsToBounds = true
        
    }

}
