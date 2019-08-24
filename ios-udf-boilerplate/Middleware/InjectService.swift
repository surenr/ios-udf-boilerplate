//
//  InjectService.swift
//  ios-udf-boilerplate
//
//  Created by Suren Rodrigo on 8/14/19.
//  Copyright © 2019 Suren Rodrigo. All rights reserved.
//

func injectService<T, U>(service: T, receivers: [(T) -> (U)]) -> [U] {
    return receivers.map { $0(service) }
}
