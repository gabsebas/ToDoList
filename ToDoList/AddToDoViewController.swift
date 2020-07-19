//
//  AddToDoViewController.swift
//  ToDoList
//
//  Created by Apple on 7/13/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    var previousVC = ToDoTableViewController()
    @IBOutlet weak var appLabel: UILabel!
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var importantLabel: UILabel!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    @IBAction func addTapped(_ sender: Any) {let toDo = ToDo()

     if let titleText = titleTextField.text {
       toDo.name = titleText
       toDo.important = importantSwitch.isOn
     }
        previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData()
        
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
           
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
