//
//  FactoryViewController.swift
//  Factory Coordinator
//
//  Created by Pooyan J on 12/29/1403 AP.
//

import UIKit

final class FactoryViewController {

    func createHomeViewController() -> HomeViewController {
        return HomeViewController()
    }

    func createLoginViewController() -> LoginViewController {
        return LoginViewController()
    }
}
