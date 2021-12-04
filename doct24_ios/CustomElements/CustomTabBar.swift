//
//  CustomTabBar.swift
//  doct24_ios
//
//  Created by Alexander Kolomenskiy on 04.12.2021.
//

import UIKit

class CustomTabBar: UITabBar {


    override init(frame: CGRect) {
        super .init(frame: frame)
        setup()
    }

    required init?(coder: NSCoder) {
        super .init(coder: coder)
        setup()
    }

    func setup() {
        let appearance = UITabBarItem.appearance()
        let attributes = [NSAttributedString.Key.font:UIFont(name: "Rubik-Regular", size: 11)]
        appearance.setTitleTextAttributes(attributes as [NSAttributedString.Key : Any], for: .normal)
        tintColor = Const.Colors.MainGreen
    }

}
