//
//  StoreViewCell.swift
//  CustomerFeedback
//
//  Created by paresh on 05/07/20.
//  Copyright © 2020 Solution Analysts. All rights reserved.
//

import UIKit

class StoreViewCell: UICollectionViewCell {
    
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var storeNameLabel: UILabel!
    
    lazy var height: NSLayoutConstraint = {
        let height = contentView.heightAnchor.constraint(equalToConstant: bounds.size.height)
        height.isActive = true
        return height
    }()
    
    lazy var width: NSLayoutConstraint = {
        let width = contentView.widthAnchor.constraint(equalToConstant: bounds.size.width)
        width.isActive = true
        return width
    }()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.backgroundColor = UIColor.red
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func systemLayoutSizeFitting(_ targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority: UILayoutPriority) -> CGSize {
        width.constant = bounds.size.width
        height.constant = bounds.size.height
        return contentView.systemLayoutSizeFitting(CGSize(width: targetSize.width, height: targetSize.height))
    }
}
