//
//  wndzlf.swift
//  ObserverPattern
//
//  Created by admin on 29/10/2018.
//  Copyright © 2018 wndzlf. All rights reserved.
//

import Foundation

class Wndzlf:Observer {
    private var subject:Subject
    
    init(_ subject: Subject) {
        self.subject = subject
        self.subject.addObserver(observer: self)
    }
    
    func update(_ notifyValue: Int) {
            print("wndzlf의 num값이 \(notifyValue) 로 바뀌었습니다.")
    }
    
    
}
