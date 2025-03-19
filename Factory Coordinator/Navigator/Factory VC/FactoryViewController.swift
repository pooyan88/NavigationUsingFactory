//
//  FactoryViewController.swift
//  Factory Coordinator
//
//  Created by Pooyan J on 12/29/1403 AP.
//

import UIKit

final class FactoryViewController {

    private let navigator: Navigator

    init(navigator: Navigator) {
        self.navigator = navigator
    }

    func createHomeViewController() -> HomeViewController {
        let vc = HomeViewController()
        vc.navigator = navigator
        return vc
    }

    func createLoginViewController() -> LoginViewController {
        let vc = LoginViewController()
        vc.navigator = navigator
        return vc
    }
}
