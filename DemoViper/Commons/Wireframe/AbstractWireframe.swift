//
//  AbstractWireframe.swift
//  DemoViper
//
//  Created by Hugo Pinheiro on 21/10/21.
//

import UIKit

class AbstractWireframe {
    
    weak var viewController: UIViewController?
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    func onPop(animated: Bool) {
        self.viewController?.navigationController?.popViewController(animated: true)
    }
    
    func onPopToRoot(animated: Bool) {
        self.viewController?.navigationController?.popToRootViewController(animated: true)
    }
    
    func onDismiss(animated: Bool) {
        self.viewController?.dismiss(animated: animated, completion: nil)
    }
    
    func onDismissNavigation(animated: Bool) {
        self.viewController?.navigationController?.dismiss(animated: animated, completion: nil)
    }
    
    func pushModule(viewController : UIViewController, animated : Bool) {
        self.viewController?.navigationController?.pushViewController(viewController, animated: true)
    }

    func presentModule(viewController : UIViewController, animated : Bool) {
        viewController.modalPresentationStyle = .fullScreen
        if let navigationController = self.viewController?.navigationController {
            navigationController.present(viewController, animated: animated, completion: nil)
        } else {
            let navigationController = BaseNavigationController(rootViewController: viewController, isModal: true)
            navigationController.modalPresentationStyle = .fullScreen
            self.viewController?.present(navigationController, animated: animated, completion: nil)
            self.viewController?.navigationController?.popToViewController(navigationController, animated: true)
        }
    }

}
