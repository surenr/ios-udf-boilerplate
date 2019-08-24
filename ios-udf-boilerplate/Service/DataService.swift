//
//  DataService.swift
//  ios-udf-boilerplate
//
//  Created by Suren Rodrigo on 8/10/19.
//  Copyright © 2019 Suren Rodrigo. All rights reserved.
//

import PromiseKit
protocol DataService {
    func sampleApiService(param:String) -> Promise<SampleDTO>
}

