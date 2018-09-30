//
//  LocationAnnotation.swift
//  the map2
//
//  Created by Issa Alkhamees on 9/29/18.
//  Copyright © 2018 Essa Nabeel. All rights reserved.
//

import MapKit

class LocationAnnotation: NSObject, MKAnnotation
{
    let name : String
    let address : String
   // let subtitle : String
    let desc : String
    let coordinate: CLLocationCoordinate2D
    
    init(name: String, address: String, desc: String, coordinate: CLLocationCoordinate2D /*,subtitle : String*/)
    {
        self.name = name
        self.address = address
        self.desc = desc
        self.coordinate = coordinate
        //self.subtitle = subtitle
        
        super.init()
    }
    
    var title: String?
    {
        return name
    }
    
    var subtitle: String?
    {
        return address
    }
    
}
