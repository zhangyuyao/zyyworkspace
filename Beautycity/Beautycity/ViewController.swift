//
//  ViewController.swift
//  Beautycity
//
//  Created by 高研老师1 on 16/11/8.
//  Copyright © 2016年 高研老师1. All rights reserved.
//

import UIKit
class CityCell:UITableViewCell{
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityImage: UIImageView!
 
}
class ViewController: UIViewController,UITableViewDataSource {
    let citys = ["Love","Paris","Deguo","Fushan","las"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.citys.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let citycell = tableView.dequeueReusableCell(withIdentifier: "CityCell", for: indexPath) as! CityCell
        citycell.cityLabel.text = self.citys[indexPath.row]
        let image = UIImage(named:self.citys[indexPath.row]+".jpg")
        citycell.cityImage.image = image
        return citycell
    }
}

