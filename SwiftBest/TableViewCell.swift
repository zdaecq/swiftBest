//
//  TableViewCell.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 09.07.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //removeSeparatorInsets()
    }

}
