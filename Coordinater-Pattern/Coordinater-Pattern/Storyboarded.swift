//
//  Storyboarded.swift
//  Coordinater-Pattern
//
//  Created by Sushant Jagtap on 03/02/22.
//

/*
    - Always give same class name and storyboard id to work properly this protocol.
 */

import Foundation
import UIKit

protocol Storyboarded {
    
    static func instantiate() -> Self
    
}

extension Storyboarded where Self: UIViewController {
    
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(identifier: id) as! Self
    }
    
}
