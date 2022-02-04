//
//  Maincoordinator.swift
//  Coordinater-Pattern
//
//  Created by Sushant Jagtap on 03/02/22.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = ViewController.instantiate()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: false)
    }
    
    func buySubscription() {
        let viewController = BuyViewController.instantiate()
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func createAccount() {
        let viewController = CreateAccountViewController.instantiate()
        navigationController.pushViewController(viewController, animated: true)
    }
    
}
