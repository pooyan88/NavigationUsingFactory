//
//  LoginViewController.swift
//  Factory Coordinator
//
//  Created by Pooyan J on 12/29/1403 AP.
//

import UIKit

final class LoginViewController: UIViewController {

    var navigator: Navigator?

    @IBAction func buttonAction(_ sender: Any) {
        navigator?.showHomeViewController()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
