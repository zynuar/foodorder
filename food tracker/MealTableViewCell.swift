//
//  MealTableViewCell.swift
//  food tracker
//
//  Created by Izzaty on 27/08/2019.
//  Copyright © 2019 Izzaty. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {
    
    // Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
