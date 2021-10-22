//
//  MarcasWireFrame.swift
//  DemoViper
//
//  Created by Hugo Pinheiro on 21/10/21.
//

import Foundation
import UIKit

class MarcasWireFrame: AbstractWireframe { 
    
    static func makeModule(moduleIO: AnyObject?) -> UIViewController {
        
        let view = MarcasViewController()
        
        let presenter = MarcasPresenter(module: moduleIO)
        
        let interactor = MarcasrInteractor(delegate: presenter)
        
        let wireframe = MarcasWireFrame(viewController: view)

        presenter.interactor = interactor
        presenter.wireframe = wireframe
        
        view.presenter = presenter
        
        
        return view
        
    }
    
    
}
