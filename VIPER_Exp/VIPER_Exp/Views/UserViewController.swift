//
//  ViewController.swift
//  VIPER_Exp
//
//  Created by Shak Feizi on 11/1/21.
//

import UIKit
// protocol
// ref to presenter
protocol AnyView {
    var presenter: AnyPresenter? { get set }
    
    func update(with user: [User])
    func update(with error: String)
}


class UserViewController: UIViewController, AnyView {
    // SHAK: Properties
    var presenter: AnyPresenter?
    
    // SHAK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // SHAK: Functions
    func update(with user: [User]) {
        
    }
    
    func update(with error: String) {
        
    }

}

