//
//  HeaderView.swift
//  doct24_ios
//
//  Created by Alexander Kolomenskiy on 29.11.2021.
//

import UIKit

@IBDesignable
class HeaderView: UIView {

    @IBOutlet weak var view: UIView!
    @IBOutlet weak var countryButton: UIButton!

    override init(frame: CGRect) {
        super.init(frame: frame)

        nibSetup()
    }

    override func awakeFromNib() {
        super.awakeFromNib()

        nibSetup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        nibSetup()
    }

    private func nibSetup() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.translatesAutoresizingMaskIntoConstraints = true



//        countryButton.layer.cornerRadius = countryButton.frame.size.height / 2
//        countryButton.layer.borderWidth = 1
//        countryButton.layer.borderColor = UIColor.gray.cgColor

        addSubview(view)
    }

    private func loadViewFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: type(of: self).description().replacingOccurrences(of: "doct24_ios.", with: ""), bundle: bundle)
        let nibView = nib.instantiate(withOwner: self, options: nil).first as! UIView

        return nibView
    }

}
