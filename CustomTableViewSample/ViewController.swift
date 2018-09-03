//
//  ViewController.swift
//  CustomTableViewSample
//
//  Created by sanjeev sharma.
//  Copyright © sanjeev sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var androidnameArr = ["Cupcake","Donut","Eclair","Froyo","Gingerbread","Honeycomb","Ice Cream Sandwitch","JellyBean","KitKat","Lollipop","Marshmallow","Nougat","Oreo"]
    var androidVersionArr = ["1.5","1.6","2.1","2.2","2.3","3.1 and 3.3","4.0","4.1,4.2 and 4.3","4.4","5.0","6.0","7.0","8.0"]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.dataSource = self
        tableView.delegate = self
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return androidnameArr.count
   
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            as! TableViewCell
        
        cell.nameLbl.text = androidnameArr[indexPath.row]
        cell.descTextView.text = androidVersionArr[indexPath.row]
       
        return cell
    }

}

