//
//  BaseAction.swift
//  ios-udf-boilerplate
//
//  Created by Suren Rodrigo on 8/10/19.
//  Copyright © 2019 Suren Rodrigo. All rights reserved.
//

import ReSwift


enum RemoveStateStatus: Action {
    case perform(actionId: String)
    case success
    func getState() -> ActionStatus {
        switch self {
        case .success:
            return ActionStatus.COMPLETED
        default:
            return ActionStatus.INIT
        }
    }
}

protocol BaseAction: Action {
    func getState() -> ActionStatus
    func getError() -> ApiError?
}


enum ActionStatus {
    case INIT, COMPLETED, ERROR
}
