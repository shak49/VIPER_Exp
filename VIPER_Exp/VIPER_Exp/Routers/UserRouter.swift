//
//  Router.swift
//  VIPER_Exp
//
//  Created by Shak Feizi on 11/1/21.
//

import Foundation
// object
// protocol
// entry point of module
// ref to presenter
protocol AnyRouter {
    static func start() -> AnyRouter
}

class UserRouter: AnyRouter {
    static func start() -> AnyRouter {
        let router = UserRouter()
        return router
    }
}
