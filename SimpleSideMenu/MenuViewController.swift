//
//  MenuViewController.swift
//  SimpleSideMenu
//
//  Created by Максим Вакурин on 09.05.17.
//  Copyright © 2017 Vakurin Maxim. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var menuTableView: UITableView!
    
    let titles = ["first", "second", "three"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuTableView.delegate = self
        menuTableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = menuTableView.dequeueReusableCell(withIdentifier: "Cell") as! MenuTableViewCell
        cell.labelText.text = titles[indexPath.row]
        return cell
    }

}
