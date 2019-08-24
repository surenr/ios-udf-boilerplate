//
//  TestBase.swift
//  ios-udf-boilerplateTests
//
//  Created by Suren Rodrigo on 8/15/19.
//  Copyright © 2019 Suren Rodrigo. All rights reserved.
//

import XCTest
@testable import ios_udf_boilerplate

class TestBase: Base{
    
    var actionIds: [String] = []
    var username: String = ""
    var testError: ApiError? = nil
    func onStateUpdate(state: AppState, action: BaseAction?) -> Bool {
        switch(action!) { // NB: How to handle action based state update
        case _ as SampleAction:
            username = state.sampleDto.name
            return true
        default:
            return false
        }
    }
    
    func onError(error: ApiError?) {
        testError = error
    }
    
    func updateName(gender: String) {
        dispatchAction(action: SampleAction.request(gender: gender, id: getActionId()))
    }
   
}
