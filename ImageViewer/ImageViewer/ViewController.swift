//
//  ViewController.swift
//  ImageViewer
//
//  Created by 유재성 on 7/2/25.
//

import UIKit

class ViewController: UIViewController {

    var numImage: Int = 1;
    var maxImage: Int = 7;
    
    
    @IBOutlet var imgView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgView.image = UIImage(named:"1.PNG")
        
    }

    @IBAction func onBtnPrev(_ sender: UIButton) {
        
        numImage-=1
        
        if(numImage < 1){
            
            numImage = maxImage;
        }
        
        imgView.image = UIImage(named:String(numImage) + ".PNG");
    }
    
    
    @IBAction func onBtnNext(_ sender: UIButton) {
        
        numImage+=1
        
        if(numImage > maxImage){
            numImage = 1;
        }
        
        imgView.image = UIImage(named:String(numImage) + ".PNG");
        
    }
    
}

