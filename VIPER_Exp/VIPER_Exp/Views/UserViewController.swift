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


class UserViewController: UIViewController, AnyView, UITableViewDelegate, UITableViewDataSource {
    // SHAK: Properties
    var presenter: AnyPresenter?
    let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        table.isHidden = true
        return table
    }()
    
    // SHAK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    // SHAK: Functions
    func update(with user: [User]) {
        
    }
    
    func update(with error: String) {
        
    }

    // SHAK: Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    

}

