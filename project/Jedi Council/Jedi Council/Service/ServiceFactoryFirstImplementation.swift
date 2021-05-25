//
//  ServiceFactoryFirstImplementation.swift
//  Jedi Council
//
//  Created by Тимофей Борисов on 15.05.2021.
//

import Foundation

class ServiceFactoryFirstImplementation: ServiceFactory {
    func makeCouncilService() -> CouncilService {
        MockCouncilService()
    }
}
