//
//  ViewController.swift
//  ios-udf-boilerplate
//
//  Created by Suren Rodrigo on 8/9/19.
//  Copyright © 2019 Suren Rodrigo. All rights reserved.
//

import UIKit
import Foundation
import DriwIOSBase

class ViewController: BaseViewController {
    
    @IBOutlet weak var nameLabel:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // pass any name to print or keep it empty to get an error
        dispatchAction(action: SampleAction.request(name: "Steve Wozniak", id: self.getActionId()))
    }
    
    //UDF methods
    override func onStateUpdate(state: UdfBaseState<ApplicationState>, action: BaseAction?) -> Bool {
        switch(action!) { // NB: How to handle action based state update
        case _ as SampleAction:
            print("🥳 successfully retrived and print the name : " + getSampleDTOName(store.state))
            self.nameLabel.text = "🙋🏻‍♂️ Hello " + getSampleDTOName(store.state)
            return true
        default:
            return false
        }
    }
    
    override func onError(action: BaseAction?) {
        if(action?.getError() != nil) {
            print("error occured")
        }
    }

}

