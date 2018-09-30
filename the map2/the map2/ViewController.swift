//
//  ViewController.swift
//  the map2
//
//  Created by Issa Alkhamees on 9/25/18.
//  Copyright © 2018 Essa Nabeel. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapViewOutlet: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mapViewOutlet.delegate = self
        
        //King Abdulaziz Center for World Culture
        let nycLat = 26.3358
        let nycLong = 50.1206
        let KACWCcenter = CLLocationCoordinate2D(latitude: nycLat, longitude: nycLong)
        
//        let myAnnotation = MKPointAnnotation()
//        myAnnotation.coordinate = center
//        myAnnotation.title = "King Abdulaziz Center for World Culture"
//        myAnnotation.subtitle = "مركز الملك عبدالعزيز الثقافي العالمي"
        
        let KACWCAnnotation = LocationAnnotation(name: "King Abdulaziz Center for World Culture", address: "Az Zahran 34461, Saudi Arabia", desc: "The King Abdulaziz Center for World Culture is an arts centre, also known as Ithra, in Dhahran, Saudi Arabia, developed by Saudi Aramco and inaugurated by King Salman bin Abdulaziz on 1 December 2017. The Center incorporates a museum, library, cinema, auditorium, and exhibition halls.", coordinate: KACWCcenter)
        
        //King Fahd University of Petroleum and Minerals
        let KFUPMlat = 26.3071
        let KFUPMLong = 50.1459
        let KFUPMcenter = CLLocationCoordinate2D(latitude: KFUPMlat, longitude: KFUPMLong)
        
//        let myAnnotation2 = MKPointAnnotation()
//        myAnnotation2.coordinate = KFUPMcenter
//        myAnnotation2.title = "King Fahd University of Petroleum and Minerals"
//        myAnnotation2.subtitle = "جامعة الملك فهد للبترول و المعادن‎"
        
        let KFUPMAnnotation = LocationAnnotation(name: "King Fahd University of Petroleum and Minerals", address: "Az Zahran 31261, Saudi Arabia", desc: "King Fahd University of Petroleum and Minerals is a public university in Dhahran, Saudi Arabia. Among Saudi universities, its science and engineering programs are highly regarded.", coordinate: KFUPMcenter)
        
        //Saudi Aramco
        let KFIPlat = 26.310238
        let KFIPLong = 50.136944
        let KFIPcenter = CLLocationCoordinate2D(latitude: KFIPlat, longitude: KFIPLong)
        
//        let myAnnotation3 = MKPointAnnotation()
//        myAnnotation3.coordinate = KFIPcenter
//        myAnnotation3.title = "Saudi Aramco"
//        myAnnotation3.subtitle = "أرامكو السعودية"
        
        let SAAnnotation = LocationAnnotation(name: "Saudi Aramco", address: "Saudi Aramco P.O. Box 5000 Dhahran 31311 Saudi Arabia", desc: "Saudi Aramco, officially the Saudi Arabian Oil Company, is a Saudi Arabian national petroleum and natural gas company based in Dhahran. It is one of the largest companies in the world by revenue, and according to accounts seen by Bloomberg News, the most profitable company in the world.", coordinate: KFIPcenter)
        
        
        mapViewOutlet.showAnnotations([KACWCAnnotation, KFUPMAnnotation, SAAnnotation], animated: true)
        
//        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
//
//        mapViewOutlet.setRegion(region, animated: true)
//        mapViewOutlet.addAnnotations([myAnnotation, myAnnotation2, myAnnotation3])
        
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView?
    {
        if let annotation = annotation as? LocationAnnotation
        {
            let identifier = "LocationAnnotation"
            var view : MKPinAnnotationView
            if let dequeuedView = mapViewOutlet.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKPinAnnotationView
            {
                dequeuedView.annotation = annotation
                view = dequeuedView
            }
            else
            {
            
                view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                view.canShowCallout = true
                view.rightCalloutAccessoryView = UIButton.init(type: .detailDisclosure)
            }
            return view
        }
        return nil
    }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl)
    {
        if control == view.rightCalloutAccessoryView
        {
            performSegue(withIdentifier: "AnnotationDetail", sender: view.annotation as! LocationAnnotation)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let sender = sender as? LocationAnnotation
        {
            if let controller = segue.destination as? LocationDetailViewController
            {
                controller.header = sender.name
                controller.desc = sender.address
                controller.comments = sender.desc
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

