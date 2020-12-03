//
//  EnrollViewController.swift
//  fb
//
//  Created by Kaviya Prarthana on 02/12/20.
//

import UIKit
import FirebaseCore
import FirebaseDatabase

class EnrollViewController: UIViewController {

    
    var todo = Todo()
    var todoList = [Todo]()
      
    @IBOutlet weak var messageTF: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    @IBAction func addEntry(_ sender: Any) {
      self.todo.message = self.messageTF.text
              
               //second section
    let ref = Database.database().reference()
    let key = ref.child("todoList").childByAutoId().key
               
    let dictionaryTodo = ["message" : todo.message!]
                                     
               
    let childUpdates = ["/todoList/\(String(describing: key))": dictionaryTodo]
               ref.updateChildValues(childUpdates, withCompletionBlock: { (error, ref) -> Void in
    self.navigationController?.popViewController(animated: true)
               })
    
    
    }
    
    @IBAction func Clear(_ sender: Any) {
      self.messageTF.text = ""
    }
    
  
   
}
