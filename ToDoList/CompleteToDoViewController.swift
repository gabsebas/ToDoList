//
//  CompleteToDoViewController.swift
//  ToDoList
//
//  Created by Apple on 7/14/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    var previousVC = ToDoTableViewController()
    var selectedToDo = ToDo()
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func completeTapped(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = selectedToDo.name
        // Do any additional setup after loading the view.
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
