//
//  Actions.swift
//  ios-udf-boilerplate
//
//  Created by Suren Rodrigo on 8/15/19.
//  Copyright © 2019 Suren Rodrigo. All rights reserved.
//

enum SampleAction: BaseAction {
    case request(gender: String, id: String?)
    case success
    case perform(sampleDto: SampleDTO, id: String?)
    case failure(error: ApiError, id: String?)
    func getState() -> ActionStatus {
        switch self {
        case .success:
            return ActionStatus.COMPLETED
        case .failure:
            return ActionStatus.ERROR
        default:
            return ActionStatus.INIT
        }
    }
    func getError() -> ApiError? {
        switch self {
        case .failure(let error, _?):
            return error
        default:
            return nil
        }
    }
}
