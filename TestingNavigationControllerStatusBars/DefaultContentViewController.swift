//
//  ViewController.swift
//  TestingNavigationControllerStatusBars
//
//  Created by Murray Goodwin on 02/12/2021.
//

import UIKit

class DefaultContentViewController: UIViewController {

    override public var preferredStatusBarStyle: UIStatusBarStyle {
        .default
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
    }


}

