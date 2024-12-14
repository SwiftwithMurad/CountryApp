//
//  CityCell.swift
//  CountryApp
//
//  Created by Mac on 18.11.24.
//

import UIKit

class CityCell: UITableViewCell {

    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityImage: UIImageView!
    var country: Country?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
//        cityImage.image = UIImage(named: "BakuCity")
        // Configure the view for the selected state
    }
    
}
