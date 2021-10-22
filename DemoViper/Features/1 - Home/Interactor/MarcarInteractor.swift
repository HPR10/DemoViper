//
//  MarcarInteractor.swift
//  DemoViper
//
//  Created by Hugo Pinheiro on 21/10/21.
//

import Foundation

class MarcasrInteractor {
    
    weak var delegate: MarcasInteractorContract?
    
    init(delegate: MarcasInteractorContract) {
        self.delegate = delegate
    }
    
}
