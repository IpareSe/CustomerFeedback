//
//  StoreListCell.swift
//  CustomerFeedback
//
//  Created by paresh on 05/07/20.
//  Copyright © 2020 Solution Analysts. All rights reserved.
//

import UIKit
import Cosmos

class StoreListCell: UITableViewCell {

    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var ratingText: UILabel!
    @IBOutlet weak var ratingView: CosmosView!
    @IBOutlet weak var reviewLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var storeNameLabel: UILabel!
    @IBOutlet weak var storeLogoImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        ratingView.settings.starSize = Double(8 * UIScreen.main.bounds.width / 320)
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
