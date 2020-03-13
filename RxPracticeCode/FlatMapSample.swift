//
//  FlatMapSample.swift
//  RxPracticeCode
//
//  Created by 이준수 on 2020/03/13.
//  Copyright © 2020 LeeJoonsoo. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

struct Student {
    
    var score: BehaviorSubject<Int>
    
}



func bind() {
    
    let diposeBag = DisposeBag()

    let ryan = Student(score: BehaviorSubject(value: 80))
    let charlotte = Student(score: BehaviorSubject(value: 90))

    let student = PublishSubject<Student>()
    
    
    
    student
        .flatMapLatest {
            $0.score
    }
    .subscribe(onNext: {
        print($0)
    })
    .disposed(by: diposeBag)
    
    
    student.onNext(ryan)
    
    ryan.score.onNext(85)
    
    student.onNext(charlotte)
    
    ryan.score.onNext(95)
    
    charlotte.score.onNext(100)

    
}








