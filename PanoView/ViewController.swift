//
//  ViewController.swift
//  PanoView
//
//  Created by Jeff Schmitz on 10/11/16.
//  Copyright © 2016 Jeff Schmitz. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController, GMSPanoramaViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let panoView = GMSPanoramaView(frame: CGRect.zero)
        self.view = panoView
        
        panoView.moveNearCoordinate(CLLocationCoordinate2DMake(-33.732, 150.312))
        panoView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - GMSPanoramaViewDelegate
    func panoramaView(_ view: GMSPanoramaView, error: Error, onMoveNearCoordinate coordinate: CLLocationCoordinate2D) {
        print("Moving near coordinate (\(coordinate.latitude),\(coordinate.longitude) error: \(error.localizedDescription)")
    }

    func panoramaView(_ view: GMSPanoramaView, error: Error, onMoveToPanoramaID panoramaID: String) {
        print("Moving to PanoID \(panoramaID) error: \(error.localizedDescription)")
    }
    
    func panoramaView(_ view: GMSPanoramaView, didMoveTo panorama: GMSPanorama?) {
        print("Moved to panoramaID: \(panorama?.panoramaID) coordinates: (\(panorama?.coordinate.latitude),\(panorama?.coordinate.longitude))")
    }
}

