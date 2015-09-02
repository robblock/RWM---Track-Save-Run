//
//  HomeViewController.swift
//  RWM - Track & Save Run
//
//  Created by Rob Block on 9/2/15.
//  Copyright (c) 2015 RWM. All rights reserved.
//

import UIKit
import CoreData

class HomeViewController: UIViewController {
    var managedObjectContext: NSManagedObjectContext?
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.destinationViewController.isKindOfClass(NewRunViewController) {
            if let newRunViewController = segue.destinationViewController as? NewRunViewController {
                newRunViewController.managedObjectContext = managedObjectContext
            }
        }
    }

}
