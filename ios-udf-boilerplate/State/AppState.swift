//
//  AppState.swift
//  ios-udf-boilerplate
//
//  Created by Suren Rodrigo on 8/10/19.
//  Copyright © 2019 Suren Rodrigo. All rights reserved.
//

import ReSwift
import DriwIOSBase

struct ApplicationState {
    let systemStateUpdateTracker: [String : BaseAction]
    
    let sampleDto: SampleDTO
    init(systemStateUpdateTracker: [String: BaseAction] = [:], sampleDto: SampleDTO = SampleDTO(name: "")) {
        self.systemStateUpdateTracker = systemStateUpdateTracker
        self.sampleDto = sampleDto
    }
    
    func copy(systemStateUpdateTracker: [String: BaseAction]? = nil, sampleDto: SampleDTO? = nil) -> ApplicationState {
        return ApplicationState(systemStateUpdateTracker: systemStateUpdateTracker ?? self.systemStateUpdateTracker,
                        sampleDto: sampleDto ?? self.sampleDto
        )
    }
}

//projections to retrieve data from app state
let getSampleDTO = {(state: UdfBaseState<ApplicationState>) -> SampleDTO in return state.appState.sampleDto }

let getSampleDTOName = {(state: UdfBaseState<ApplicationState>) -> String in return getSampleDTO(state).name }
