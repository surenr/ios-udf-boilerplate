//
//  AppState.swift
//  ios-udf-boilerplate
//
//  Created by Suren Rodrigo on 8/10/19.
//  Copyright © 2019 Suren Rodrigo. All rights reserved.
//

import ReSwift

struct AppState: StateType {
    let systemStateUpdateTracker: [String : BaseAction]
    let sampleDto: SampleDTO
    init(systemStateUpdateTracker: [String: BaseAction] = [:], sampleDto: SampleDTO = SampleDTO(name: "")) {
        self.systemStateUpdateTracker = systemStateUpdateTracker
        self.sampleDto = sampleDto
    }
    
    func copy(systemStateUpdateTracker: [String: BaseAction]? = nil, sampleDto: SampleDTO? = nil) -> AppState {
        return AppState(systemStateUpdateTracker: systemStateUpdateTracker ?? self.systemStateUpdateTracker,
                        sampleDto: sampleDto ?? self.sampleDto
        )
    }
}
