//
//  StoreListVC.swift
//  CustomerFeedback
//
//  Created by paresh on 05/07/20.
//  Copyright © 2020 Solution Analysts. All rights reserved.
//

import UIKit

class StoreListVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    let storeList = StoreListDataSource()
    var layout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        let width = UIScreen.main.bounds.size.width
        layout.estimatedItemSize = CGSize(width: 1, height: 60)
        return layout
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
            
        collectionView.register(UINib(nibName: "StoreDetailCell", bundle: nil), forCellWithReuseIdentifier: "StoreDetailCell")
//        collectionView.collectionViewLayout = layout
        setUpDataSource()
    }
    
    func setUpDataSource() {
        collectionView.delegate = storeList
        collectionView.dataSource = storeList
    }
    
}

class StoreListDataSource: NSObject, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var stores: [Store] = [Store(name: "Siaram Grocery Store Merci Market Merci Market", address: "1011 1st Market, New York, NY 10010"), Store(name: "Siaram Grocery Store", address: "1011 1st Market, New York, NY 10010"), Store(name: "Siaram Grocery Store", address: "1011 1st Market, New York, NY 10010 2021 7th Avenue, New York, NY 10010 Siaram Grocery Store Siaram Grocery Store Siaram Grocery Store 1011 1st Market, New York, NY 10010 2021 7th Avenue, New York, NY 10010 Siaram Grocery Store Siaram Grocery Store Siaram Grocery Store"), Store(name: "Siaram Grocery Store", address: "1011 1st Market, New York, NY 10010"), Store(name: "Siaram Grocery Store", address: "1011 1st Market, New York, NY 10010"), Store(name: "Siaram Grocery Store", address: "1011 1st Market, New York, NY 10010"), Store(name: "Siaram Grocery Store", address: "1011 1st Market, New York, NY 10010"), Store(name: "Siaram Grocery Store", address: "1011 1st Market, New York, NY 10010"), Store(name: "Siaram Grocery Store", address: "1011 1st Market, New York, NY 10010"), Store(name: "Siaram Grocery Store", address: "1011 1st Market, New York, NY 10010")]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stores.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoreDetailCell", for: indexPath) as! StoreDetailCell
        cell.storeNameLabel.text = stores[indexPath.row].name
        cell.addressLabel.text = stores[indexPath.row].address
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 100)
    }
}
 

struct Store {
    let name: String
    let address: String
}
