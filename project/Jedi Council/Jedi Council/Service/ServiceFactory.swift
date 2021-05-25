//
//  ServiceFactory.swift
//  Jedi Council
//
//  Created by Тимофей Борисов on 15.05.2021.
//

import Foundation

protocol ServiceFactory {
    func makeCouncilService() -> CouncilService
}
