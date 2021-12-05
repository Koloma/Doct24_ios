//
//  SpecializationViewController.swift
//  doct24_ios
//
//  Created by Alexander Kolomenskiy on 04.12.2021.
//

import UIKit

class SpecializationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       print("Specialization")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}
