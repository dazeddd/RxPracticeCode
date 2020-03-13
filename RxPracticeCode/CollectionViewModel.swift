//
//  CollectionViewModel.swift
//  RxPracticeCode
//
//  Created by 이준수 on 2020/03/13.
//  Copyright © 2020 LeeJoonsoo. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

struct CollectionViewModel: CollectionViewBindable {
    
    let didEndDisplayingCell: PublishSubject<IndexPath>
    
    
    
    init(_ model: CollectionModel = CollectionModel()) {
        
        
        
    }
    
    
}


