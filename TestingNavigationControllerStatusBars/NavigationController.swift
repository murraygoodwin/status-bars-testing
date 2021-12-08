//
//  NavigationController.swift
//  TestingNavigationControllerStatusBars
//
//  Created by Murray Goodwin on 02/12/2021.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // This overrides the settings of the ViewControllers. If you don't set it here, it defaults to 'default' -> i.e. black text, even if the ViewController is set to .lightContent
        navigationBar.barStyle = .black
    }

}
