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
    @IBOutlet weak var headerMidleLable: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var bigLableView: ShadowView!
    @IBOutlet weak var eventsLable: UILabel!

    private var docImages:[UIImage?] = [ UIImage(named: "doctor0")
                                         ,UIImage(named: "doctor1")
                                         ,UIImage(named: "doctor2")
                                         ,UIImage(named: "doctor0")
                                         ,UIImage(named: "doctor1")
                                         ,UIImage(named: "doctor2")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()

        collectionView.register(UINib(nibName: "DoctorCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "DoctorCollectionViewCell")
        collectionView.dataSource = self
        collectionView.delegate = self
    }

    func setupView() {
        
        headerMidleLable.textColor = Const.Colors.Main
        eventsLable.textColor = Const.Colors.Main
    }

}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return docImages.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DoctorCollectionViewCell", for: indexPath) as? DoctorCollectionViewCell {
            cell.setup(image: docImages[indexPath.row], text: "")
            return cell
        }
        return UICollectionViewCell()
    }


}
