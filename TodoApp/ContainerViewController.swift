//
//  ContainerViewController.swift
//  TodoApp
//
//  Created by Brian Advent on 21.12.17.
//  Copyright © 2017 Brian Advent. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var connectionButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    
    var todoTableViewController:ToDoTableViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addButton.layer.cornerRadius = addButton.frame.size.width / 2
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TodoVC" {
            todoTableViewController = (segue.destination as! UINavigationController).childViewControllers.first as! ToDoTableViewController
            todoTableViewController.connectionButtonReference = connectionButton
        }
    }
    
    @IBAction func addNewTodoItem(_ sender: Any) {
        todoTableViewController.addNewTodo()
    }
    
    @IBAction func triggerConnection(_ sender: Any) {
        todoTableViewController.showConnectivityAction()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
