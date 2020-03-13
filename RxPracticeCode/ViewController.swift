//
//  ViewController.swift
//  RxPracticeCode
//
//  Created by 이준수 on 2020/03/12.
//  Copyright © 2020 LeeJoonsoo. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

protocol ViewBindable {
    var didEndScrollingAnimation: PublishSubject<Void> { get }
    
    
    
}

class ViewController: UIViewController {

    var disposeBag = DisposeBag()
    
    let tableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    func bind(_ viewModel: ViewBindable) {
        
        self.disposeBag = DisposeBag()
        
        tableView.rx.didEndScrollingAnimation
            .map { _ in Void() }
            .bind(to: viewModel.didEndScrollingAnimation)
            .disposed(by: disposeBag)
        
        
        
        
        
        
    }

}

