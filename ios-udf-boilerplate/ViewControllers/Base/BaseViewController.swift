
//
//  BaseViewController.swift
//  ios-udf-boilerplate
//
//  Created by Bishan Meddegoda on 11/22/19.
//  Copyright © 2019 Suren Rodrigo. All rights reserved.
//

import UIKit
import DriwIOSBase
import ReSwift

class BaseViewController: UIViewController, Base {
    
    //UDF methods
    var storeInstance: Store<UdfBaseState<ApplicationState>> = store
    var actionIds: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        store.subscribe(self)
    }
    
    deinit {
        store.unsubscribe(self)
    }
    
    func onStateUpdate(state: UdfBaseState<ApplicationState>, action: BaseAction?) -> Bool {
        return false
    }
    
    func onRawStateUpdate(state: UdfBaseState<AppStateType>) {
        
    }
    
    func onError(action: BaseAction) {
    }
    
    func beforeSideEffect(lambda: @escaping ()->Void) {
        //call your loading animator show method here before return lambda()
        print("start task")
        lambda()
    }
    
    func afterSideEffect(lambda: @escaping () -> Void) {
        //call your loading animator close method here before return lambda()
        print("end task")
        lambda()
    }
   
}
