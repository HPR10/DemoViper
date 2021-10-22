//
//  MarcasPresenter.swift
//  DemoViper
//
//  Created by Hugo Pinheiro on 21/10/21.
//

import Foundation

class MarcasPresenter: BasePresenter { 
    
    weak var view: MarcasContract?
    var interactor: MarcasrInteractor?
    var wireframe: MarcasWireFrame?
    
}

extension MarcasPresenter: MarcasInteractorContract {
    
}
