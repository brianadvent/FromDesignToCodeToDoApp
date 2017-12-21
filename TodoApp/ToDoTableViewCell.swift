//
//  ToDoTableViewCell.swift
//  TodoApp
//
//  Created by Brian Advent on 10.12.17.
//  Copyright © 2017 Brian Advent. All rights reserved.
//

import UIKit


class ToDoTableViewCell: UITableViewCell {

    @IBOutlet weak var todoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

  
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.contentView.backgroundColor = UIColor.white
    }

}
