//
//  Navigator.swift
//  Factory Coordinator
//
//  Created by Pooyan J on 12/29/1403 AP.
//

import UIKit

final class Navigator {

    let navigationController: UINavigationController
    lazy var factory: FactoryViewController = FactoryViewController(navigator: self)

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func showHomeViewController() {
        let vc = HomeViewController.instantiate(from: .home)
        vc.navigator = self
        navigationController.pushViewController(vc, animated: true)
    }
}

extension UIViewController {

    static var identifier: String {
        String(describing: self)
    }

    enum StoryboardName: String {
        case home = "Home"
        case main = "Main"
    }

    static func instantiate(from storyboard: StoryboardName) -> Self {
        let storyboard = UIStoryboard(name: storyboard.rawValue, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: identifier) as! Self
        return vc
    }
}
