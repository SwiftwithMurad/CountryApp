//
//  CountryCell.swift
//  CountryApp
//
//  Created by Mac on 18.11.24.
//

import UIKit



class CountryCell: UITableViewCell {
    
    
    @IBOutlet private weak var countryImageView: UIImageView!
    @IBOutlet private weak var countryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        countryImageView.layer.masksToBounds = true
        countryImageView.layer.cornerRadius = countryImageView.frame.height / 2
//        countryImageView.image?.size =
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func setData(country: Country) {
        countryLabel.text = country.name
        countryImageView.image = UIImage(named: country.flag)
    }
    
    func config(label: String, image: String) {
        countryLabel.text = label
        countryImageView.image = UIImage(named: image)
    }

}
