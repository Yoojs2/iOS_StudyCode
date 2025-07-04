//
//  ViewController.swift
//  PickerView
//
//  Created by 유재성 on 7/4/25.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

    let MAX_ARRAY_NUM = 7
    let PICKER_VIEW_COLUMN = 1
    var imageFileName = ["1.PNG", "2.PNG", "3.PNG", "4.PNG", "5.PNG", "6.PNG", "7.PNG"]
    var imageArray = [UIImage?]()
    
    @IBOutlet var pickerImage: UIImageView!
    @IBOutlet var lbImageFileName: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for i in 0 ..< MAX_ARRAY_NUM{
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
        }
        
        lbImageFileName.text = imageFileName[0]
        imageView.image = imageArray[0]
    
    }
    
    //피커 뷰에게 컴포넌트의 수를 정수 값으로 넘겨줌
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    //피커 뷰에게 컴포넌트의 열의 개수를 정수 값으로 넘겨 줌
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    
    //피커 뷰에게 컴포넌트의 각 열의 타이틀을 문자자열의 값으로 넘겨줌
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return imageFileName[row]
    }
    
    //룰렛을 선택했을때 실행 됨
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lbImageFileName.text = imageFileName[row]
        imageView.image = imageArray[row]
        
    }
    
    
    
    
}

