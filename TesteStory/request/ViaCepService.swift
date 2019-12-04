//
//  ViaCepService.swift
//  TesteStory
//
//  Created by Devmaker on 04/12/19.
//  Copyright © 2019 Devmaker. All rights reserved.
//

import Foundation

class ViaCepService : BaseRequestCodable {
    init(search: String) {
        super.init()
        self.method = .get
        self.url = "http://viacep.com.br/ws/\(search)/json/"
    }
}


class RequestVia(search: String) : BaseAuthorizedRequestCodable {
    
}

