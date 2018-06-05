//
//  CustomButtonCell.swift
//  CallbacksInTableView
//
//  Created by Jahid Hasan Polash on 6/6/18.
//  Copyright © 2018 Jahid Hasan Polash. All rights reserved.
//

import UIKit

class CustomButtonCell: UITableViewCell {
    @IBOutlet weak var btnAction: UIButton!
    
    var triggerAction: (()->())?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func btnActionTapped(_ sender: UIButton) {
        triggerAction?()
    }
}
