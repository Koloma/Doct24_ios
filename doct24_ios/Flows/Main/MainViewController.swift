//
//  ViewController.swift
//  doct24_ios
//
//  Created by Alexander Kolomenskiy on 29.11.2021.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var sliderButton: UIButton!
    @IBOutlet weak var searchBar: UISearchBar!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }

    func setupView() {

        sliderButton.layer.cornerRadius = 15

    }

}

