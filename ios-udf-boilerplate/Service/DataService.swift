//
//  DataService.swift
//  ios-udf-boilerplate
//
//  Created by Suren Rodrigo on 8/10/19.
//  Copyright © 2019 Suren Rodrigo. All rights reserved.
//

import DriwIOSBase
import PromiseKit

protocol AppDataService: DataService {
    func sampleApiService(param:String) -> Promise<SampleDTO>
}

