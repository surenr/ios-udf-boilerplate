//
//  SampleDTO.swift
//  ios-udf-boilerplate
//
//  Created by Suren Rodrigo on 8/10/19.
//  Copyright © 2019 Suren Rodrigo. All rights reserved.
//

class SampleDTO {
    var name: String = ""
    
    init(name: String) {
        self.name = name
    }
    
    func copy(name: String? = nil) -> SampleDTO {
        return SampleDTO(name: name ?? self.name)
        
    }
    
}
