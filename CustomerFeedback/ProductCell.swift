//
//  ProductCell.swift
//  CustomerFeedback
//
//  Created by paresh on 12/07/20.
//  Copyright © 2020 Solution Analysts. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productDetailLabel: UILabel!
    @IBOutlet weak var productTitleLabel: UILabel!
    
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        layoutAttributes.bounds.size.height = systemLayoutSizeFitting(UIView.layoutFittingCompressedSize).height
        return layoutAttributes
    }
}
