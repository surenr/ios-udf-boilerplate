//
//  MiddlewareItem.swift
//  ios-udf-boilerplate
//
//  Created by Suren Rodrigo on 8/14/19.
//  Copyright © 2019 Suren Rodrigo. All rights reserved.
//

import ReSwift

typealias MiddlewareItem = (Action, @escaping DispatchFunction) -> ()
