//
//  ViewController.swift
//  PrioritySchedular
//
//  Created by Haru on 2020/11/12.
//

import UIKit

class CreateViewController: UIViewController {
    @IBOutlet weak var textFieldOfCreate: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
   
    }

    @IBAction func buttonBack(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    //Did End on Exit (안됨)
    @IBAction func dateInserted2(_ sender: UITextField) {
        guard let textUnwrapped = sender.text else { return print("날짜 입력 안 됨") }
        //유효성검사 1. 길이 8자 미만
        if textUnwrapped.count < 8 {
            print("날짜를 다시 입력해주세요")
        }
        //2. 길이 8자 초과 : 적는 도중에 끊겼으면 좋겠음(alert없이 max length 가능한지)
        
        //3. 년 월 일 잘라서 31일 안넘는지.. 합쳤을 때 윤달 안되는지 등 실제 날짜 검사
        
        //유효성 검사 통과 시 : 2020.01.01 형태로 보여짐
//        년 월 일 자르기 - 에러먹음 String.Index가 뭐야 몰라
//        let year = textUnwrapped[..<4]
//        let month = textUnwrapped[4..<6]
//        let day =
    }
}

