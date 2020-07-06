//
//  StoreDetailCell.swift
//  CustomerFeedback
//
//  Created by paresh on 05/07/20.
//  Copyright © 2020 Solution Analysts. All rights reserved.
//

import UIKit

class StoreDetailCell: UICollectionViewCell {

    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var storeNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        contentView.translatesAutoresizingMaskIntoConstraints = false
    }
    
//    lazy var width: NSLayoutConstraint = {
//        let width = contentView.widthAnchor.constraint(equalToConstant: bounds.size.width)
//        width.isActive = true
//        return width
//    }()
//        
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        contentView.translatesAutoresizingMaskIntoConstraints = false
//        contentView.backgroundColor = UIColor.red
//    }
//    
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//        contentView.translatesAutoresizingMaskIntoConstraints = false
//        contentView.backgroundColor = UIColor.red
//        
//    }
//    
//    override func systemLayoutSizeFitting(_ targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority: UILayoutPriority) -> CGSize {
//        width.constant = bounds.size.width
//        return contentView.systemLayoutSizeFitting(CGSize(width: targetSize.width, height: 1))
//    }

}
