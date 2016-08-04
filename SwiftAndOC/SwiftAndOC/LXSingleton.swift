//
//  LXSingleton.swift
//  OCAndSwift
//
//  Created by 李旭 on 16/8/4.
//  Copyright © 2016年 李旭. All rights reserved.
//

import Foundation

class LXSingleton: NSObject {
    
    var iVal: Int = 0
    
    class var shareInstance: LXSingleton {
        
        get {
            struct Static {
                static var instance: LXSingleton? = nil
                static var token: dispatch_once_t = 0
            }
            
            dispatch_once(&Static.token, {
                Static.instance = LXSingleton()
            })
            
            return Static.instance!
        }
    }
}

