//
//  ViewController.swift
//  doct24_ios
//
//  Created by Alexander Kolomenskiy on 29.11.2021.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var midleView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }

    func setupView() {
        
        addTextLable()

    }


    func addTextLable() {

        let lable = UILabel()
        lable.frame = CGRect(x: 0, y: 0, width: 202, height: 28)
        lable.backgroundColor = .white

        lable.textColor = UIColor(red: 0.024, green: 0.655, blue: 0.702, alpha: 1)
        lable.font = UIFont(name: "Rubik-Medium", size: 28)

        lable.text = "Лучшие врачи"

        let parent = midleView!
        parent.addSubview(lable)
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.widthAnchor.constraint(equalToConstant: 202).isActive = true
        lable.heightAnchor.constraint(equalToConstant: 28).isActive = true
        lable.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 86).isActive = true
        lable.topAnchor.constraint(equalTo: parent.topAnchor, constant: 277).isActive = true

    }
}

