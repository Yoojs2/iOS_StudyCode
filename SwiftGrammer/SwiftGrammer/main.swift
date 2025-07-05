//
//  main.swift
//  SwiftGrammer
//
//  Created by 유재성 on 7/4/25.
//

import Foundation

print("Hello, World!")

var Name = "Ho-Jeong"
var score = 100

var name: [String] = ["슈퍼맨", "배트맨", "캡틴", "아이언맨"]

func testfunc(parm: Int) -> (){
    print("function call")
}

testfunc(parm: 10)

//익명 함수

//{ (파라미터 목록) -> 반환형 in
//    실행 코드
//}

func completeWork(finised: Bool) ->(){
    print("complete : \(finised)")
}

let myClosure = { (finised: Bool) -> () in
    print("complete : \(finised)")
}

myClosure(true)  // 호출 방법


//함수의 인자로 쓰는방법


func doWork(completion: (Bool) -> Void) {
    print("작업 중...")
    completion(true)
}

//do work를 호출했고 인자로 익명함수를 쓴것
doWork(completion: { (finised) -> () in
    print("complete : \(finised)")
})



print("----------------------")

var color : [String] = ["빨간색","노란색", "파란색", "하얀색", "검정색"]

for c in color{
    print(c)
}


