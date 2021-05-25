//
//  ServiceFactorySecondImplementation.swift
//  Jedi Council
//
//  Created by Тимофей Борисов on 15.05.2021.
//

import Foundation

class ServiceFactorySecondImplementation: ServiceFactory {
    func makeCouncilService() -> CouncilService {
        RestCouncilService()
    }
}
