//
//  Presenter.swift
//  VIPER_Exp
//
//  Created by Shak Feizi on 11/1/21.
//

import Foundation
import UIKit
// object
// protocol
// ref to view / interacter / router
protocol AnyPresenter {
    var router: AnyRouter? { get set }
    var intractor: AnyInteractor? { get set }
    var viwe: AnyView? { get set }
    
    func interactorDidFetchUsers(result: Result<[User], Error>)
}

class UserPresenter: AnyPresenter {
    var router: AnyRouter?
    var intractor: AnyInteractor?
    var viwe: AnyView?
    
    func interactorDidFetchUsers(result: Result<[User], Error>) {
        
    }
}
