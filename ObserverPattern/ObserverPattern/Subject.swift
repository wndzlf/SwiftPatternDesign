//
//  Subject.swift
//  ObserverPattern
//
//  Created by admin on 29/10/2018.
//  Copyright © 2018 wndzlf. All rights reserved.
//

import Foundation

class Subject {
    private var observers: [Observer] = [Observer]()
    private var value: Int = Int()
    
    var num:Int {
        set{
            value = newValue
            notify()
        }
        get{
            return value
        }
    }
    
    func addObserver(observer: Observer){
        observers.append(observer)
    }
    
    func notify() {
        for observer in observers {
            observer.update(num)
        }
    }
    
}
