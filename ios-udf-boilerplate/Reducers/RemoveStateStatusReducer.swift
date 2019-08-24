//
//  RemoveStateStatusReducer.swift
//  ios-udf-boilerplate
//
//  Created by Suren Rodrigo on 8/15/19.
//  Copyright © 2019 Suren Rodrigo. All rights reserved.
//
import ReSwift

func removeStateStatusReducer(action: Action, state: AppState) -> AppState {
    switch(action as! RemoveStateStatus) {
    case .perform( let id):
        let newStateStatusMap = state.systemStateUpdateTracker.filter { $0.key != id }
        let localState = state.copy(systemStateUpdateTracker: newStateStatusMap)
        return localState
    default:
        return state
    }
}
