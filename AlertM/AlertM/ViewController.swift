//
//  ViewController.swift
//  AlertM
//
//  Created by 유재성 on 7/5/25.
//

import UIKit

class ViewController: UIViewController {

    let timeSelector: Selector = #selector(ViewController.updateTime)
    

    
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    
    let interval = 1.0
    var alarmTime: String?
    var alertFlag = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        
        lblPickerTime.text = "선택시간 : " + formatter.string(from: datePickerView.date)
        formatter.dateFormat = "hh:mm aaa"
        alarmTime = formatter.string(from: datePickerView.date)
    }
    
    @objc func updateTime(){
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        lblCurrentTime.text = "현재시간 : " + formatter.string(from: date as Date)
        
        formatter.dateFormat = "hh:mm aaa"
        let currentTime = formatter.string(from: date as Date)
        
        if (currentTime == alarmTime) {
            if(!alertFlag){
                let lampOnAlert = UIAlertController(title: "알림", message: "설정된 시간입니다!!",
                                                    preferredStyle: UIAlertController.Style.alert)
                let onAction = UIAlertAction(title: "확인", style: UIAlertAction.Style.default, handler: nil)
                lampOnAlert.addAction(onAction)
                present(lampOnAlert, animated: true, completion: nil)
                alertFlag = true
            }
        }
        
        else{
            alertFlag = false
        }
        
    }
    
}

