//
//  BaseNavegationController.swift
//  DemoViper
//
//  Created by Hugo Pinheiro on 21/10/21.
//

import Foundation
import UIKit

class BaseNavigationController: UINavigationController, UINavigationControllerDelegate {

    convenience init(rootViewController: UIViewController, isModal: Bool = false, canDismiss: Bool = true) {
        self.init(rootViewController: rootViewController)

        if isModal && canDismiss {
            let leftMenuItem = UIBarButtonItem(image: UIImage(named: "icon-menu-arrow"), style: .plain, target: self, action: #selector(self.backEvent))

            rootViewController.navigationItem.setLeftBarButton(leftMenuItem, animated: false)
        }
    }
    
    @objc func backEvent() {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        delegate                    = self
        navigationBar.tintColor     = UIColor.black
        navigationBar.barTintColor  = UIColor.blue

        navigationBar.isTranslucent = false

        if #available(iOS 13.0, *) {
            let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = UIColor.blue
            navigationBar.standardAppearance = appearance;
            navigationBar.scrollEdgeAppearance = navigationBar.standardAppearance
        }
    }
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {

        if let _ = navigationController.viewControllers.first {
            viewController.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        }

        if let childViewController = navigationController.viewControllers.last,
            navigationController.viewControllers.count > 1 {

            childViewController.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        }
    }

}

