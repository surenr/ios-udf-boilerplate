//
//  ViewController.swift
//  ios-udf-boilerplate
//
//  Created by Suren Rodrigo on 8/9/19.
//  Copyright © 2019 Suren Rodrigo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Sample {
    var name: String = ""
    
    func initSample() {
        name = test()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        initSample()
        print("Value of name: " + name)
        // Do any additional setup after loading the view.
    }


}

