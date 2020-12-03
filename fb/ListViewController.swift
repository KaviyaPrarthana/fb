//
//  ListViewController.swift
//  fb
//
//  Created by Kaviya Prarthana on 02/12/20.
//

import UIKit
import FirebaseDatabase

class ListViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
   
  @IBOutlet weak var tableView: UITableView!
    var todo = String()
    var todoList = [String]()
      
   
    override func viewDidLoad() {
        super.viewDidLoad()
  
        DispatchQueue.global().async {
            self.loadData()
        }
    }
  
   //MARK:- FetchData
    func loadData() {
     self.todoList.removeAll()
     let ref = Database.database().reference()
        ref.child("todoList").observeSingleEvent(of: .value, with: { (snapshot) in
     if let todoDict = snapshot.value as? [String:AnyObject] {
       for (_,todoElement) in todoDict {
                      
       
        self.todo = todoElement["message"] as! String
        self.todoList.append(self.todo)
        DispatchQueue.main.async{
        self.tableView.reloadData()
        } }
          }
    }) { (error) in
                    print(error.localizedDescription)
              }

        }
    
        //MARK: TableView datasource
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return self.todoList.count
        }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCell")as! ListTableViewCell
       
        cell.list.text =  self.todoList[indexPath.row]
            return cell
        }
}
