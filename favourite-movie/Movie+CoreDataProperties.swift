//
//  Movie+CoreDataProperties.swift
//  favourite-movie
//
//  Created by Drew Westcott on 18/04/2016.
//  Copyright © 2016 Drew Westcott. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Movie {

    @NSManaged var movieTitle: String?
    @NSManaged var reasonLiked: String?
    @NSManaged var linkToIMDB: String?
    @NSManaged var movieImage: NSData?
    @NSManaged var movieDescription: String?

}
