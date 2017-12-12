//
//  ToDoTableViewCell.swift
//  TodoApp
//
//  Created by Brian Advent on 10.12.17.
//  Copyright © 2017 Brian Advent. All rights reserved.
//

import UIKit

protocol TodoCellDelegate {
    func didRequestDelete (_ cell:ToDoTableViewCell)
    func didRequestComplete (_ cell:ToDoTableViewCell)
}

class ToDoTableViewCell: UITableViewCell {

    @IBOutlet weak var todoLabel: UILabel!
    
    var delegate:TodoCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func completeTodo(_ sender: Any) {
        if let delegateObject = self.delegate {
            delegateObject.didRequestComplete(self)
        }
    }
    
    @IBAction func deleteTodo(_ sender: Any) {
        if let delegateObject = self.delegate {
            delegateObject.didRequestDelete(self)
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
