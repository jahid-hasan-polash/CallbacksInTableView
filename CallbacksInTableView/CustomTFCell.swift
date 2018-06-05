//
//  CustomTFCell.swift
//  CallbacksInTableView
//
//  Created by Jahid Hasan Polash on 6/6/18.
//  Copyright © 2018 Jahid Hasan Polash. All rights reserved.
//

import UIKit

class CustomTFCell: UITableViewCell, UITextFieldDelegate {
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    var returnTextFieldValue: ((_ value: String?)->())?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        returnTextFieldValue?(textField.text)
    }
}
