//
//  ViewController.swift
//  theMap
//
//  Created by Issa Alkhamees on 9/21/18.
//  Copyright © 2018 Essa Nabeel. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapViewOutlet: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let nycLat = 26.3358
        let nycLong = 50.1206
        let center = CLLocationCoordinate2D(latitude: nycLat, longitude: nycLong)
        
        let myAnnotation = MKPointAnnotation()
        myAnnotation.coordinate = center
        myAnnotation.title = "King Abdulaziz Center for World Culture"
        myAnnotation.subtitle = "مركز الملك عبدالعزيز الثقافي العالمي"
        
        let KFUPMlat = 26.3071
        let KFUPMLong = 50.1459
        let KFUPMcenter = CLLocationCoordinate2D(latitude: KFUPMlat, longitude: KFUPMLong)
        
        let myAnnotation2 = MKPointAnnotation()
        myAnnotation2.coordinate = KFUPMcenter
        myAnnotation2.title = "King Fahd University of Petroleum and Minerals"
        myAnnotation2.subtitle = "جامعة الملك فهد للبترول و المعادن‎"
        
        let KFIPlat = 26.310238
        let KFIPLong = 50.136944
        let KFIPcenter = CLLocationCoordinate2D(latitude: KFIPlat, longitude: KFIPLong)
        
        let myAnnotation3 = MKPointAnnotation()
        myAnnotation3.coordinate = KFIPcenter
        myAnnotation3.title = "Saudi Aramco"
        myAnnotation3.subtitle = "أرامكو السعودية"

        mapViewOutlet.showAnnotations([myAnnotation, myAnnotation2, myAnnotation3], animated: true)
        
        
        func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl)
        {
            if control == view.detailCalloutAccessoryView
        }
        
        
//        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
//
//        mapViewOutlet.setRegion(region, animated: true)
//        mapViewOutlet.addAnnotations([myAnnotation, myAnnotation2])
    }


}


