//
//  SampleReducer.swift
//  ios-udf-boilerplate
//
//  Created by Suren Rodrigo on 8/15/19.
//  Copyright © 2019 Suren Rodrigo. All rights reserved.
//

import ReSwift
import DriwIOSBase

func sampleReducer(action: Action, state: UdfBaseState<ApplicationState>) -> UdfBaseState<ApplicationState> {
    switch(action as! SampleAction) {
    case .perform(let sampleDto, let id):
        let localState = state.appState.copy(sampleDto: sampleDto)
        let newState = state.copy(state: localState)
        
        return reducerUtil.updateActionsStateStatus(state: newState, actionId: id, action: SampleAction.success)
    case .failure(let error, let id):
        return reducerUtil.updateActionsStateStatus(state: state, actionId: id, action: SampleAction.failure(error: error, id: id))
    default:
        return state
    }
}
