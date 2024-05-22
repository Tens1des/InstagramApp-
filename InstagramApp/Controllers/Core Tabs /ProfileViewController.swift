//
//  ProfileViewController.swift
//  InstagramApp
//
//  Created by Роман  on 13.05.2024.
//

import UIKit

class ProfileViewController: UIViewController {

    private var collectionView: UICollectionView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureNavigationBar()
        
        let layout = UICollectionViewLayout()
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width: view.width/3, height: view.width/3)
        collectionView = UICollectionView(frame: .zero,
                                        collectionViewLayout: layout)
        collectionView?.delegate = self
        collectionView?.dataSource = self
        guard let collectionView = collectionView else {
            return
        }
        view.addSubview(collectionView)
    }
    
    
    private func configureNavigationBar () {
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"),
                                                            style: .done,
                                                            target: self,
                                                            action: #selector(didTapSettingsButton))
    }
    
    
    @objc private func didTapSettingsButton () {
        let vc = SettingsViewController()
        vc.title = "Settings"
        navigationController?.pushViewController(vc, animated: true)
    }

    

}

extension
