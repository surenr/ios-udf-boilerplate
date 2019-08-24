//
//  RemoteDataService.swift
//  ios-udf-boilerplate
//
//  Created by Suren Rodrigo on 8/10/19.
//  Copyright © 2019 Suren Rodrigo. All rights reserved.
//

import PromiseKit

struct RemoteDataService: DataService {
    func sampleApiService(param: String) -> Promise<SampleDTO> {
        return Promise<SampleDTO> { seal in
            if(param == "success") {
                let sampleObj = SampleDTO(name: "Sample Name")
                seal.fulfill(sampleObj)
            } else {
                seal.reject(NSError(domain: "test", code: 500))
            }
        }
    }
}
