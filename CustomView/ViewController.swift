//
//  ViewController.swift
//  CustomView
//
//  Created by Satyadev Chauhan on 05/09/20.
//  Copyright © 2020 Satyadev Chauhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customView: CustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        customView.label.text = "Hello World"
    }


}

