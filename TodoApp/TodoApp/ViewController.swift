//
//  ViewController.swift
//  TodoApp
//
//  Copyright © 2020 aya fathy. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var todos = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 80
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath) as! TodoTableVewCell
        cell.todoLabel.text = todos[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! TodoTableVewCell
        cell.accessoryType = .none
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         let cell = tableView.cellForRow(at: indexPath) as! TodoTableVewCell
           cell.accessoryType = .checkmark

    }
        
            @IBAction func didTapAdd(_ sender: Any) {

                let todoAlert = UIAlertController(title: "Add todo", message: "Add a new todo", preferredStyle: .alert)
                todoAlert.addTextField()
                let addTodoAction = UIAlertAction(title: "Add", style: .default) { (action) in
                    let newTodo = todoAlert.textFields![0]
                    self.todos.append(newTodo.text!)
                    self.tableView.reloadData()
                    
                }
                let cancelAction = UIAlertAction(title: "cancel", style: .default)
                
                todoAlert.addAction(addTodoAction)
                todoAlert.addAction(cancelAction)
                
                present(todoAlert, animated: true, completion: nil)
        
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            todos.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
               
        
                
            }
        
        

    

