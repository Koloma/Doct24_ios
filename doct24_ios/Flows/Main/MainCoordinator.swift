//
//  MainCoordinator.swift
//  doct24_ios
//
//  Created by Alexander Kolomenskiy on 29.11.2021.
//

import UIKit
import SwiftUI

final class MainCoordinator: BaseCoordinator {

    var onLogout: (() -> Void)?

    private var navigationController: UINavigationController?

    private let username: String?

    init(username: String?) {
        self.username = username
        super.init()
    }

    override func start() {
        let viewController = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(MainViewController.self)

//        viewController.onLogout = { [weak self] in
//            self?.onLogout?()
//        }
//
//        viewController.onShowMap = { [weak self] in
//            self?.showMap()
//        }

//        if let username = username {
//            viewController.userName = "Hello, \(username)"
//        } else {
//            viewController.userName = nil
//        }

        let navController = UINavigationController(rootViewController: viewController)
        setAsRoot(navController)
        self.navigationController = navController
    }

}
