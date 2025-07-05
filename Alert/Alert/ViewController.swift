//
//  ViewController.swift
//  Alert
//
//  Created by 유재성 on 7/4/25.
//

import UIKit

class ViewController: UIViewController {

    
    let imgOn = UIImage(named: "lamp-on.png")
    let imgOff = UIImage(named: "lamp-off.png")
    let imgRemove = UIImage(named: "lamp-remove.png")
    
    var isLampOn = true
    
    @IBOutlet var lampImg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        lampImg.image = imgOn
    }
    
    @IBAction func btnLampOn(_ sender: UIButton) {
        
        if(isLampOn){
            
           let lampOnAlert = UIAlertController(title: "경고", message: "Lamp is On", preferredStyle: .alert)
            let onAction = UIAlertAction(title: "네, 알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
            lampOnAlert.addAction(onAction)
            present(lampOnAlert, animated: true, completion : nil)
            
        } else{
            
            lampImg.image = imgOff
            isLampOn = true
        }
    }
    

    @IBAction func btnLampOff(_ sender: UIButton) {
        
        if (isLampOn){
            //1번
            let lampOffAlert = UIAlertController(title: "램프 끄기", message: "램프를 끄겠습니까", preferredStyle: .alert)
            
            //2번
            let offAction = UIAlertAction(title: "네", style: UIAlertAction.Style.default,
                                          handler: { ACTION in self.lampImg.image = self.imgOff
            })
            
            //3번
            let cencelAction = UIAlertAction(title: "취소", style: UIAlertAction.Style.cancel, handler: nil)
            
            //4번
            lampOffAlert.addAction(offAction)
            lampOffAlert.addAction(cencelAction)
            
            //5번
            present(lampOffAlert, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func btnLampRemove(_ sender: UIButton) {
        
        let lampRemoveAlert = UIAlertController(title: "램프 제거", message: "램프를 제거하시겠습니까?", preferredStyle: .alert)
        
        let offAction = UIAlertAction(title: "아니오, 끕니다(off)", style: UIAlertAction.Style.default, handler: {ACTION in
            self.lampImg.image=self.imgOff
            self.isLampOn=false})
        
        let onAction = UIAlertAction(title: "아니오 켭니다", style: UIAlertAction.Style.default, handler: {ACTION in
            self.lampImg.image=self.imgOn
            self.isLampOn=true})
        
        
        let removeAction = UIAlertAction(title: "네, 제거합니다", style: UIAlertAction.Style.default, handler: {ACTION in self.lampImg.image=self.imgRemove
            self.isLampOn=false
        })
        
        lampRemoveAlert.addAction(offAction)
        lampRemoveAlert.addAction(onAction)
        lampRemoveAlert.addAction(removeAction)
        
        present(lampRemoveAlert, animated: true, completion: nil)
    }
    
    
}

