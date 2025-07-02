//
//  ViewController.swift
//  ImageView
//
//  Created by 유재성 on 7/2/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var lblHello: UILabel!
    @IBOutlet var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func btnSend(_ sender: UIButton) {
        
        lblHello.text = "hello, " + txtName.text!
        
    }
    

}

