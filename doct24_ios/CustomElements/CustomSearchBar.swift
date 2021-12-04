//
//  MySearchBar.swift
//  doct24_ios
//
//  Created by Alexander Kolomenskiy on 04.12.2021.
//

import UIKit

class CustomSearchBar: UISearchBar {

    override init(frame: CGRect) {
        super .init(frame: frame)

        backgroundImage = UIImage()

    }

    required init?(coder: NSCoder) {
        super .init(coder: coder)
        
        backgroundImage = UIImage()
    }

}
