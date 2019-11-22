//
//  AppReducer.swift
//  ios-udf-boilerplate
//
//  Created by Suren Rodrigo on 8/15/19.
//  Copyright © 2019 Suren Rodrigo. All rights reserved.
//

import DriwIOSBase
import ReSwift

let reducerUtil = ReducerUtil<ApplicationState>()

func AppReducer(action: Action, state: UdfBaseState<ApplicationState>?) -> UdfBaseState<ApplicationState> {
    let state = state ?? UdfBaseState<ApplicationState>(state: ApplicationState())
    switch action {
    case _ as SampleAction:
        return sampleReducer(action: action, state: state)
        
    //Don't remove below case
    case _ as RemoveStateStatus:
        return reducerUtil.removeStateStatusReducer(action: action, state: state)
    default:
        return state
    }
}
