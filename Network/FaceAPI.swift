//
//  FaceNetwork.swift
//  RxPracticeCode
//
//  Created by 이준수 on 2020/03/13.
//  Copyright © 2020 LeeJoonsoo. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

enum FaceAPIError: Error {
    
    case error(String)
    case defaultError
    
    var message: String {
        switch self {
        case let .error(msg):
            return msg
        case .defaultError:
            return "잠시 후에 다시!"
            
        }
        
    }
    
    
    
    
}

protocol FaceAPI {
    
    func fetchCelebName(image: UIImage) -> Observable<Result<[CelebInfo],FaceAPIError>>
    
    
    func fetchCelebPhoto(name: String) -> Observable<Result<CelebPhoto,FaceAPIError>>
    
    
}

class FaceAPIImpl: FaceAPI {
    
    private let session : URLSession
    private let request = URLRequest(url: <#T##URL#>)
    
    
    init(session: URLSession = URLSession.shared) {
        self.session = session
        
    }
    
    func fetchCelebName(image: UIImage) -> Observable<Result<[CelebInfo],FaceAPIError>> {
        
        
        
        
        return session.rx.data(request: URLRequest(url: url))
            
                
                
                
        }
        
    }
    
    
    
}
