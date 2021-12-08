//
//  ViewController.swift
//  TestingNavigationControllerStatusBars
//
//  Created by Murray Goodwin on 02/12/2021.
//

import UIKit

class DarkContentViewController: UIViewController {

    override public var preferredStatusBarStyle: UIStatusBarStyle {
        .darkContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
    }


}

