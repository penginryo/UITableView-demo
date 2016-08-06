//
//  DataTableViewCell.swift
//  BasicTableView
//
//  Created by Ryo Makabe on 2016-08-04.
//  Copyright © 2016 ryomakabe. All rights reserved.
//

import UIKit

class DataTableViewCell: UITableViewCell {

	@IBOutlet weak var nameLabel: UILabel!
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
