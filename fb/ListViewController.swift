//
//  ListViewController.swift
//  fb
//
//  Created by Kaviya Prarthana on 02/12/20.
//

import UIKit
import FirebaseDatabase

class ListViewController: UIViewController,UITableViewDataSource {
   
  @IBOutlet weak var tableView: UITableView!
    var todo = Todo()
   lazy var todoList = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.reloadData()
       
       
    }
   
    
        //MARK: TableView datasource
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return self.todoList.count
        }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCell")
      
         cell!.textLabel?.text = todoList[indexPath.row]
            return cell!
        }
}
