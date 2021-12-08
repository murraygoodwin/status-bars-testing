//
//  ViewController.swift
//  TestingNavigationControllerStatusBars
//
//  Created by Murray Goodwin on 02/12/2021.
//

import UIKit

class LightContentViewController: UIViewController {

    override public var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }

    private let alertController = UIAlertController(
        title: "Hello",
        message: "This is a test message.",
        preferredStyle: .alert
    )

    private var action: UIAlertAction!

    var presentingWindow: UIWindow!
    var alertPresentingViewController: UIViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        action = UIAlertAction(title: "Got it.", style: .destructive) { [weak self] _ in
            self?.clearAlert()
        }
        alertController.addAction(action)
    }

    private func presentError() {

        let keyWindow = UIApplication.shared.connectedScenes
            .filter{ $0 .activationState == .foregroundActive }
            .first(where: { $0 is UIWindowScene })
            .flatMap({ $0 as? UIWindowScene })?.windows
            .first(where: \.isKeyWindow)

        guard let windowScene = keyWindow?.windowScene else {
            return
        }
        presentingWindow = UIWindow(windowScene: windowScene)
        alertPresentingViewController = WhiteStatusBarViewController()
        presentingWindow.rootViewController = alertPresentingViewController
        presentingWindow.windowLevel = .alert + 1
        presentingWindow.makeKeyAndVisible()
        alertPresentingViewController.present(alertController, animated: true, completion: nil)
    }

    @IBAction func buttonTapped() {
        presentError()
    }

    private func clearAlert() {
        alertPresentingViewController = nil
        presentingWindow = nil
    }
    

}

