//
//  ViewController.swift
//  fb
//
//  Created by Kaviya Prarthana on 02/12/20.
//

import UIKit
import Firebase


class ViewController: UIViewController {

    @IBOutlet weak var segmented: UISegmentedControl!
    
    @IBOutlet weak var firestView: UIView!
    
    
    @IBOutlet weak var secondView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        self.secondView.alpha = 0
    
    
    }


    @IBAction func segAction(_ sender: Any) {
    if segmented.selectedSegmentIndex == 0 {
            self.secondView.alpha = 0
        self.firestView.alpha = 1
    }else {
        self.secondView.alpha = 1
        self.firestView.alpha = 0
    }
    }
}

