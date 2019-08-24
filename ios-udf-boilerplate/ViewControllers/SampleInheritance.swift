//
//  SampleInheritance.swift
//  ios-udf-boilerplate
//
//  Created by Suren Rodrigo on 8/9/19.
//  Copyright © 2019 Suren Rodrigo. All rights reserved.
//

import Foundation
import UIKit

protocol Sample {
    var name: String { get set}
    func initSample();
    
}
extension Sample {
    func test()->String {
        return "Welcome"
    }
}

class SampleImpl: UIViewController, Sample {
   
    var name: String = ""
    var greeting: String = ""
    func initSample() {
        self.greeting = test()
        self.name = "Test Success"
    }
    
}

