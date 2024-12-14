//
//  SecondController.swift
//  CountryApp
//
//  Created by Mac on 17.11.24.
//

import UIKit



class SecondController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var countryTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countryTableView.dataSource = self
        countryTableView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell") as! CountryCell
//        cell.countryLabel.text = countries[indexPath.row].name
//        cell.countryImageView.image = UIImage(named: countries[indexPath.row].flag)
        
//        cell.setData(country: countries[indexPath.row])
        cell.config(label: countries[indexPath.row].name, image: countries[indexPath.row].flag)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "CityController") as! CityController
        controller.cities = countries[indexPath.row].city
        controller.tabName = countries[indexPath.row].name
        
        navigationController?.show(controller, sender: nil)
    }
}
