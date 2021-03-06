//
//  StoreDetailVC.swift
//  CustomerFeedback
//
//  Created by paresh on 12/07/20.
//  Copyright © 2020 Solution Analysts. All rights reserved.
//

import UIKit

class StoreDetailVC: UIViewController {

    @IBOutlet weak var storeCollection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
extension StoreDetailVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell else { return UICollectionViewCell() }
        if indexPath.row % 2 == 0 {
            cell.productDetailLabel.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry."
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            guard
                let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "stCHeadCell", for: indexPath) as? STCollectionReusableView else {
                    fatalError("Invalid view type")
            }
            
            headerView.imgView.image = #imageLiteral(resourceName: "vegitables")
            return headerView
        default:
            return UICollectionReusableView()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let cell = self.storeCollection.cellForItem(at: indexPath) else {
             return
        }
        UIView.animate(withDuration: 0.4, animations: {
            cell.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        }) { (success) in
            cell.transform = .identity
        }
    }
    
}
extension StoreDetailVC: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let sectionInset = (collectionViewLayout as! UICollectionViewFlowLayout).sectionInset
        let referenceHeight: CGFloat = 100 // Approximate height of your cell
        let referenceWidth = collectionView.safeAreaLayoutGuide.layoutFrame.width
            - sectionInset.left
            - sectionInset.right
            - collectionView.contentInset.left
            - collectionView.contentInset.right
        return CGSize(width: referenceWidth, height: referenceHeight)
    }
    
}
