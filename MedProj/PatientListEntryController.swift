//
//  PatientListEntryController.swift
//  MedProj
//
//  Created by Nestor Calizar on 8/16/16.
//  Copyright © 2016 AgileSolutions. All rights reserved.
//

import UIKit

class PatientListEntryController: UITableViewCell {
    @IBOutlet weak var fname: UILabel!
    @IBOutlet weak var lname: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
