//
//  Intractor.swift
//  VIPER_Exp
//
//  Created by Shak Feizi on 11/1/21.
//

import Foundation


protocol AnyInteractor {
    var presenter: AnyPresenter? { get set }
    
    func getUsers()
}

class UserInteractor: AnyInteractor {
    var presenter: AnyPresenter?
    
    func getUsers() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return }
        URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                self?.presenter?.interactorDidFetchUsers(with: .failure(.noData))
                return
            }
            do {
                let users = try JSONDecoder().decode([User].self, from: data)
                self?.presenter?.interactorDidFetchUsers(with: .success(users))
            } catch {
                self?.presenter?.interactorDidFetchUsers(with: .failure(.unableToDecode))
            }
        }
        .resume()
    }
}
