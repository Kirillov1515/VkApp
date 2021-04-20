//
//  ClassName.swift
//  VkApp
//
//  Created by Macbook on 20.04.2021.
//

import Foundation

extension NSObject {
    var className: String {
        return String(describing: NSObject.self)
        //return self.classForCoder.description()
        //return NSStringFromClass(type(of: self))
    }
}
