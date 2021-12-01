//
//  DoctorCollectionViewCell.swift
//  doct24_ios
//
//  Created by Alexander Kolomenskiy on 01.12.2021.
//

import UIKit

class DoctorCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lable: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setup(image: UIImage?, text: String){
        imageView.image = image
        lable.text = text
    }
}
