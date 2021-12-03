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


    }

    func setupView() {
        
        headerMidleLable.textColor = Const.Colors.Main

        collectionView.register(UINib(nibName: "DoctorCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "DoctorCollectionViewCell")
        collectionView.dataSource = self
        collectionView.delegate = self


        let appearance = UITabBarItem.appearance()
        let attributes = [NSAttributedString.Key.font:UIFont(name: "Rubik-Regular", size: 11)]
        appearance.setTitleTextAttributes(attributes as [NSAttributedString.Key : Any], for: .normal)
        tabBarController?.tabBar.tintColor = Const.Colors.MainGreen


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
