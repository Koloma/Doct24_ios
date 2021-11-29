//
//  AppCoordinator.swift
//  doct24_ios
//
//  Created by Alexander Kolomenskiy on 29.11.2021.
//

import Foundation

final class AppCoordinator: BaseCoordinator {

    private var username: String?

    override func start() {
        if UserManager.instance.isAuthorized {
            showMainFlow()
        } else {
            showMainFlow()
            //showAuthFlow()
        }
    }

    func showMainFlow() {
        let coordinator = MainCoordinator(username: username)
        coordinator.onLogout = { [weak self, weak coordinator] in
            self?.removeDependency(coordinator)
            self?.start()
        }
        addDependency(coordinator)
        coordinator.start()
    }


}
