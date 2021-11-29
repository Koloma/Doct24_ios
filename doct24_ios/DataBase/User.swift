//
//  User.swift
//  doct24_ios
//
//  Created by Alexander Kolomenskiy on 29.11.2021.
//

import Foundation

final public class User: NSObject {

    public let name: String
    public let password: String
    public let created: NSDate

    public init(name: String, password: String, created: NSDate) {

        self.name = name
        self.password = password
        self.created = created
    }
}
