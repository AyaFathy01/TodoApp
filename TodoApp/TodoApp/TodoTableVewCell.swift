//
//  TodoTableVewCell.swift
//  TodoApp
//
//  Created by Wael Moharram on 5/26/20.
//  Copyright © 2020 aya fathy. All rights reserved.
//

import UIKit

class TodoTableVewCell: UITableViewCell {
    
    @IBOutlet weak var checkMarkImage: UIImageView!
    
    @IBOutlet weak var todoLabel: UILabel!
    
    var isChecked = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

