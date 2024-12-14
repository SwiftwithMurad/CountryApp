//
//  CityDetailCell.swift
//  CountryApp
//
//  Created by Mac on 19.11.24.
//

import UIKit

class CityDetailCell: UITableViewCell {

    @IBOutlet weak var cityDetailImage: UIImageView!
    @IBOutlet weak var cityDetailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    
}
