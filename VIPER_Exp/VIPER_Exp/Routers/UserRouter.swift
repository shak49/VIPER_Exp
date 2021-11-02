//
//  Router.swift
//  VIPER_Exp
//
//  Created by Shak Feizi on 11/1/21.
//

import UIKit
// object
// protocol
// entry point of module
// ref to presenter
typealias EntryPoint = AnyView & UIViewController

protocol AnyRouter {
    var entry: EntryPoint? { get }
    static func start() -> AnyRouter
}

class UserRouter: AnyRouter {
    var entry: EntryPoint?
    
    static func start() -> AnyRouter {
        let router = UserRouter()
        var view: AnyView = UserViewController()
        var intractor: AnyInteractor = UserInteractor()
        var presenter: AnyPresenter = UserPresenter()
        router.entry = view as? EntryPoint
        view.presenter = presenter
        intractor.presenter = presenter
        presenter.router = router
        presenter.view = view
        presenter.intractor = intractor
        return router
    }
}
