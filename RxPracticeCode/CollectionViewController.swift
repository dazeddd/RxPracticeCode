//
//  CollectionViewController.swift
//  RxPracticeCode
//
//  Created by 이준수 on 2020/03/13.
//  Copyright © 2020 LeeJoonsoo. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

protocol CollectionViewBindable {
    
    var didEndDisplayingCell: PublishSubject<IndexPath> { get }
    
    
    var cellData: Driver<>
    
}



class CollectionViewController: UIViewController {

    let collectionView = UICollectionView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func bind(_ viewModel: CollectionViewBindable) {
        
        collectionView.rx.didEndDisplayingCell
            .map{ $0.at }
            .bind(to: viewModel.didEndDisplayingCell )
        
        
        
        
    }
    
    
    
    
    
}
