//
//  RestCouncilService.swift
//  Jedi Council
//
//  Created by Тимофей Борисов on 15.05.2021.
//

import UIKit
import Alamofire

class RestCouncilService: CouncilService {
    
    func loadMembers(completion: @escaping (Result<[CouncilMember], Error>) -> Void) {
        AF.request("https://raw.githubusercontent.com/AZigangaraev/ITIS_2020_2_CW_1/main/council.json").validate(statusCode: 200..<300).responseDecodable(of: [CouncilMember].self) { (response) in
            switch response.result {
            case .success(let result):
                completion(.success(result))
            case .failure(let error):
                print(error)
            }
        }
    }

    func loadMemberDetails(id: String, completion: @escaping (Result<CouncilMemberDetails, Error>) -> Void) {
        AF.request("https://raw.githubusercontent.com/AZigangaraev/ITIS_2020_2_CW_1/main/members/\(id).json").validate(statusCode: 200..<300).responseDecodable(of: CouncilMemberDetails.self) { (response) in
            switch response.result {
            case .success(let result):
                completion(.success(result))
            case .failure(let error):
                print(error)
            }
        }
    }
}

