//
//  LocationDetailViewController.swift
//  the map2
//
//  Created by Issa Alkhamees on 9/29/18.
//  Copyright © 2018 Essa Nabeel. All rights reserved.
//

import UIKit

class LocationDetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var commetsLabel: UILabel!
    
    var header: String?
    var desc: String?
    var comments: String?
    
    override func viewDidLoad() {
        super .viewDidLoad()
        titleLabel.text = header
        descLabel.text = desc
        commetsLabel.text = comments
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
