//
//  SampleReducer.swift
//  ios-udf-boilerplate
//
//  Created by Suren Rodrigo on 8/15/19.
//  Copyright © 2019 Suren Rodrigo. All rights reserved.
//

import ReSwift

func sampleReducer(action: Action, state: AppState) -> AppState {
    switch(action as! SampleAction) {
    case .perform(let sampleDto, let id):
        let localState = state.copy(sampleDto: sampleDto)
        return updateActionsStateStatus(state: localState, actionId: id, action: SampleAction.success)
    case .failure(let error, let id):
        return updateActionsStateStatus(state: state, actionId: id, action: SampleAction.failure(error: error, id: id))
    default:
        return state
    }
}
