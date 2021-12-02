//
//  ShadowView.swift
//  doct24_ios
//
//  Created by Alexander Kolomenskiy on 02.12.2021.
//

import UIKit

class ShadowView: UIView {


    override init(frame: CGRect) {
        super .init(frame: frame)
        //setupShadow()
    }

    required init?(coder: NSCoder) {
        super .init(coder: coder)
        //setupShadow()
    }

    func setupShadow() {
        layer.cornerRadius = 15
        layer.masksToBounds = false
        layer.shadowRadius = 1
        layer.shadowOpacity = 0.1
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: 15).cgPath
        layer.shadowOffset = CGSize(width: 0, height: 2)
    }


    override func layoutSublayers(of layer: CALayer) {
      super.layoutSublayers(of: layer)
      self.setupShadow()
    }
}
