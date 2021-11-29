//
//  UserManager.swift
//  doct24_ios
//
//  Created by Alexander Kolomenskiy on 29.11.2021.
//

import Foundation

final class UserManager {

    static let instance = UserManager()

    private(set) var currentUser: User?

    public var isAuthorized: Bool {
        return currentUser != nil
    }

    public func authorize(username: String, password: String) -> Bool {
        //Local or Remote Database use
        let user: User? = User(name: "Admin", password: "123456", created: NSDate.now as NSDate)
        guard let user = user else {
            //"Show message user not found"
            return false
        }
        guard username == user.name,
              password == user.password else {
            return false
        }
        self.currentUser = user
        return true
    }

    public func logout() {
        currentUser = nil
    }

    private init() {}

}

extension UserManager {
    enum Constants {
        static let rootUsername = "admin"
        static let rootPassword = "123456"
    }
}
