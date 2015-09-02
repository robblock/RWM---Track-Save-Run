//
//  PastRunViewController.swift
//  RWM - Track & Save Run
//
//  Created by Rob Block on 9/2/15.
//  Copyright (c) 2015 RWM. All rights reserved.
//

import UIKit
import MapKit
import HealthKit


class PastRunsTableViewController: UITableViewController {
    
    //MARK: - Variables
    //Setting up Variables to recieve data from DetailViewController
    var run: Run!
    
    var mapRegion: MKCoordinateRegion!
    var colorSegments: MKPolyline!
    var locations: NSOrderedSet!
    var distanceQuantity: HKQuantity!
    var secondsQuantity: HKQuantity!
    var paceUnit: HKUnit!
    var paceQuantity: HKQuantity!
    var date: NSDateFormatter!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 0
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 4
    }
    
    func loadMap() {
        if run.locations.count > 0 {
            mapView.hidden = false
        }
        
        
        
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier("cellIdentifier", forIndexPath: indexPath) as! PastRunTableViewCell
        
        //If save is clicked on detailController, then populate a new cell with data.
        
        cell.mapView.region = mapRegion
        cell.distanceLabel.text = "Distance: " + distanceQuantity.description
        cell.timeLabel.text = "Time: " + secondsQuantity.description
        cell.paceLabel.text = "Pace: " + paceQuantity.description
        cell.testLabel.text = "Test"
        
        //Set the line on the map
        
        return cell
    }
    
    //MARK: - Actions & Outlets
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var paceLabel: UILabel!
}
