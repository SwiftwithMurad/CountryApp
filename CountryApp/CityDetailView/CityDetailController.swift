//
//  CityDetailController.swift
//  CountryApp
//
//  Created by Mac on 18.11.24.
//

import UIKit

class CityDetailController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var cities: [City] = []
    var titleName: String?
    
    
    @IBOutlet weak var cityDetailTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        cityDetailTableView.dataSource = self
        cityDetailTableView.delegate = self
    
        title = titleName
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CityDetailCell") as! CityDetailCell
        cell.cityDetailImage.image = UIImage(named: cities[indexPath.row].image)
        cell.cityDetailLabel.text = cities[indexPath.row].info
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
}
