//
//  Base.swift
//  ios-udf-boilerplate
//
//  Created by Suren Rodrigo on 8/10/19.
//  Copyright © 2019 Suren Rodrigo. All rights reserved.
//

import ReSwift
protocol Base: StoreSubscriber {
    var actionIds:[String] {get set}
    func onStateUpdate(state: AppState, action: BaseAction?) -> Bool
    func onError(error: ApiError?)
}

extension Base where Self: StoreSubscriber {
    func getActionId() -> String {
        let actionId =  UUID().uuidString
        actionIds.append(actionId)
        return actionId
    }
    
    func dispatchAction(action: Action, showLoader: Bool? = true) {
        if(showLoader!){
            showLoadingAnimation()
        }
        store.dispatch(action)
    }
    
    func newState(state: AppState) {
        let localActionIds = actionIds
        for actionId in localActionIds {
            let action = state.systemStateUpdateTracker[actionId] ?? nil
            if(action != nil) {
                let actionStatus = action?.getState()
                if(actionStatus == ActionStatus.COMPLETED) {
                    let result = self.onStateUpdate(state: state, action: action)
                    if(result == true) {
                        hideLoadingAnimation()
                        self.actionIds = self.actionIds.filter { $0 != actionId }
                        store.dispatch(RemoveStateStatus.perform(actionId: actionId))
                    }
                } else if (actionStatus == ActionStatus.ERROR) {
                    hideLoadingAnimation()
                    self.onError(error: action!.getError())
                    self.actionIds = self.actionIds.filter { $0 != actionId }
                    store.dispatch(RemoveStateStatus.perform(actionId: actionId))
                }
            }
        }
    }
    
    func showLoadingAnimation() {
        // Show Loading Animation. Override in BaseViewController
    }
    
    func hideLoadingAnimation() {
        // Hide Loading Animation. Override in BaseViewController 
    }
    
    
}
