//
//  SampleSideEffect.swift
//  ios-udf-boilerplate
//
//  Created by Suren Rodrigo on 8/15/19.
//  Copyright © 2019 Suren Rodrigo. All rights reserved.
//

import ReSwift

func sampleSideEffect(dataService: DataService) -> MiddlewareItem {
    return { (action: Action, dispatch: @escaping DispatchFunction) in
        // descruct the request instance and extract the variables
        guard let action = action as? SampleAction,
            case .request (let gender, let id?) = action else { return }
        // call the backend service
        dataService.sampleApiService(param: gender)
            .done {sampleDto in // Handle success
                dispatch(SampleAction.perform(sampleDto: sampleDto,  id: id))
            }
            .catch { error in // Handle error
                let apiError = ApiError(code: 500, message: error.localizedDescription)
                dispatch(SampleAction.failure(error: apiError, id: id))
        }
    }
    
}

