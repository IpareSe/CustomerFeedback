//
//  UserRateReviewVC.swift
//  CustomerFeedback
//
//  Created by paresh on 05/07/20.
//  Copyright © 2020 Solution Analysts. All rights reserved.
//

import UIKit
import Cosmos

class UserRateReviewVC: UIViewController {

    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var starRatingView: CosmosView!
    @IBOutlet weak var productRatingLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let height = Double((29 * UIScreen.main.bounds.width) / 320)
        starRatingView.settings.starMargin = 12
        starRatingView.settings.starSize = height
    }
    
    @IBAction func submitButtonTouched(_ sender: Any) {
    }
    
}
