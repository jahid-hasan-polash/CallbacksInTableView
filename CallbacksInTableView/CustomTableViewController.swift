//
//  CustomTableViewController.swift
//  CallbacksInTableView
//
//  Created by Jahid Hasan Polash on 6/6/18.
//  Copyright © 2018 Jahid Hasan Polash. All rights reserved.
//

import UIKit

class CustomTableViewController: UITableViewController {

    var cellNames = ["Name", "Email", "Phone", "Address"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row < 4 {
            switch cellNames[indexPath.row] {
            case "Name":
                let cell = tableView.dequeueReusableCell(withIdentifier: "tfCell", for: indexPath) as! CustomTFCell
                cell.labelTitle.text = "Name:"
                cell.returnTextFieldValue = { value in
                    print("Name is \(value ?? "")")
                }
                return cell
            case "Email":
                let cell = tableView.dequeueReusableCell(withIdentifier: "tfCell", for: indexPath) as! CustomTFCell
                cell.labelTitle.text = "Email:"
                cell.returnTextFieldValue = { value in
                    print("Email is \(value ?? "")")
                }
                return cell
            case "Phone":
                let cell = tableView.dequeueReusableCell(withIdentifier: "tfCell", for: indexPath) as! CustomTFCell
                cell.labelTitle.text = "Phone:"
                cell.returnTextFieldValue = { value in
                    print("Phone is \(value ?? "")")
                }
                return cell
            case "Address":
                let cell = tableView.dequeueReusableCell(withIdentifier: "tfCell", for: indexPath) as! CustomTFCell
                cell.labelTitle.text = "Address:"
                cell.returnTextFieldValue = { value in
                    print("Address is \(value ?? "")")
                }
                return cell
            default:
                return UITableViewCell()
            }
            
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "buttonCell", for: indexPath) as! CustomButtonCell
            cell.triggerAction = {
                print("Action Triggered. Do something with the informations.")
            }
            return cell
        }
    }

}

