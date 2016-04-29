//
//  CreateMovieVC.swift
//  favourite-movie
//
//  Created by Drew Westcott on 27/04/2016.
//  Copyright © 2016 Drew Westcott. All rights reserved.
//

import UIKit
import CoreData

class CreateMovieVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var movieTitle: UITextField!
    @IBOutlet weak var movieReason: UITextField!
    @IBOutlet weak var movieURL: UITextField!
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var addMovieButton: UIButton!
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        movieImage.layer.cornerRadius = 4.0
        movieImage.clipsToBounds = true
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        movieImage.image = image
    }
    
    @IBAction func addImage(sender: AnyObject!) {
        presentViewController(imagePicker, animated: true, completion: nil)
        addMovieButton.setTitle("", forState: .Normal)
    }
    
    @IBAction func createMovie(sender: AnyObject!) {
        if let title = movieTitle.text where title != "" {
            
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Movie", inManagedObjectContext: context)!
            let movie = Movie(entity: entity, insertIntoManagedObjectContext: context)
            movie.movieTitle = movieTitle.text
            movie.reasonLiked = movieReason.text
            movie.linkToIMDB = movieURL.text
            movie.setMovieImg(movieImage.image!)
            
            context.insertObject(movie)
            
            do {
                try context.save()
            } catch {
                print("Could not save the Movie")
            }
            
            self.navigationController?.popViewControllerAnimated(true)
        }
    }
    
    

}
