//
//  ToDoTableViewController.swift
//  ToDoList
//
//  Created by Apple on 7/13/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    func createToDos() -> [ToDo] {

        let swift = ToDo()
      swift.name = "Learn Swift"
      swift.important = true

        let dog = ToDo()
      dog.name = "Walk the Dog"
      // important is set to false by default

      return [swift, dog]
    }
    
var toDos : [ToDo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        toDos = createToDos()
    }

override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
    return toDos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

    let toDo = toDos[indexPath.row]
        if toDo.important {
          cell.textLabel?.text = "❗️" + toDo.name
        } else {
          cell.textLabel?.text = toDo.name
        }
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let toDo = toDos[indexPath.row]

        performSegue(withIdentifier: "moveToComplete", sender: toDo)
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addVC = segue.destination as? AddToDoViewController {
           addVC.previousVC = self
    }
       if let completeVC = segue.destination as? CompleteToDoViewController {
          if let toDo = sender as? ToDo {
            completeVC.selectedToDo = toDo
            completeVC.previousVC = self
          }

    }
   


}

}
