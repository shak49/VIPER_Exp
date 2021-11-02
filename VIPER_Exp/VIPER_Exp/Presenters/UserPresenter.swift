//
//  Presenter.swift
//  VIPER_Exp
//
//  Created by Shak Feizi on 11/1/21.
//

import Foundation
import UIKit


protocol AnyPresenter {
    var router: AnyRouter? { get set }
    var intractor: AnyInteractor? { get set }
    var view: AnyView? { get set }
    
    func interactorDidFetchUsers(with: Result<[User], NetworkError>)
}

class UserPresenter: AnyPresenter {
    var router: AnyRouter?
    var intractor: AnyInteractor? {
        didSet {
            intractor?.getUsers()
        }
    }
    var view: AnyView?
    
    func interactorDidFetchUsers(with result: Result<[User], NetworkError>) {
        switch result {
        case .success(let users):
            view?.update(with: users)
        case .failure:
            view?.update(with: "Something went wrong!")
        }
    }
}
