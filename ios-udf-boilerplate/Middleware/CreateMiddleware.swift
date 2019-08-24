//
//  CreateMiddleware.swift
//  ios-udf-boilerplate
//
//  Created by Suren Rodrigo on 8/14/19.
//  Copyright © 2019 Suren Rodrigo. All rights reserved.
//

import ReSwift

func createMiddleware(items: [MiddlewareItem]) -> Middleware<AppState> {
    return { dispatch, getState in
        return { next in
            return { action in
                items.forEach { $0(action, dispatch) }
                return next(action)
            }
        }
    }
}

