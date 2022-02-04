//
//  Coordinator.swift
//  Coordinater-Pattern
//
//  Created by Sushant Jagtap on 03/02/22.
//

/*
 
 */

import Foundation
import UIKit

protocol Coordinator {
    
    // MARK:- Properties
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    // MARK:- Methods
    func start()
}
