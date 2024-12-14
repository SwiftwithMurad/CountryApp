//
//  CityController.swift
//  CountryApp
//
//  Created by Mac on 18.11.24.
//

import UIKit

class CityController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var cities: [City] = []
    var tabName: String?
    var image: String?
    
    @IBOutlet weak var cityTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        cityTableView.dataSource = self
        cityTableView.delegate = self
        title = tabName
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CityCell") as! CityCell
        cell.cityLabel.text = cities[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "CityDetailController") as! CityDetailController
        controller.titleName = cities[indexPath.row].name
        controller.cities = [cities[indexPath.row]]
        navigationController?.show(controller, sender: nil)
    }
    
    
}
