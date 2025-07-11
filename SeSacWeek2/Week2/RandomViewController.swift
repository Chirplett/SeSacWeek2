//
//  RandomViewController.swift
//  SeSacWeek2
//
//  Created by Jude Song on 7/7/25.
//

import UIKit

class RandomViewController: UIViewController {

    @IBOutlet var randomButton: UIButton!
    @IBOutlet var randomLabel: UILabel!
    
    @IBOutlet var grayButton: UIButton!
    @IBOutlet var grayLabel: UILabel!
    

    @IBOutlet var optionalTextField: UITextField!
    @IBOutlet var checkButton: UIButton!
    
    
    let sender: [String] = []
//    let nick: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(UserDefaults.standard.integer(forKey: "Age"))
        print(UserDefaults.standard.string(forKey: "Nick"))
        
        print(UserDefaults.standard.bool(forKey: "Dan"))
        print(UserDefaults.standard.integer(forKey: "Hue"))
        print(UserDefaults.standard.string(forKey: "Jack"))
        
        //1. 왜 옵셔널이 필요한가
        //2. !라도 잘 써보자
//        var age = "2278=nmb" //s
        let age = "22" //nil X
        let next = Int(age)! + 1
        print(next)
        

        
        //button code 적용
        //default style code와 plain code style은 다름!
        //우리가 쓰는 대부분의 꾸밈 코드는 default꺼.
//        let name = "닉네임"
        randomButton.setTitle("name", for: .normal)
//        randomLabel.text = "nick"

        randomLabel.text = sender.randomElement()
        grayLabel.text = sender.randomElement()
        
//        nick = "고래밥"
//        randomLabel.text = nick
        //선언과 초기화는 따로 할 수 있지만, 사용하려면 초기화는 반드시 해야 한다.
        
        randomButtonTapped(randomButton)
        grayButtonTapped(grayButton)
        
    }
    
    @IBAction func randomButtonTapped(_ sender: UIButton) {
        
        //여기다 쓰는 것의 차이는 뭘까
//        let list = ["고래밥", "초코하임", "허버칩", "칙촉"]
        //1. 큰 범위 -> 작은 범위
        //2. 점유 공간
        let result = self.sender.randomElement()
        randomLabel.text = result
        
    }
    
    @IBAction func grayButtonTapped(_ sender: UIButton) {
        grayLabel.text = self.sender.randomElement()
    }
    
    @IBAction func checkButtonTapped(_ sender: UIButton) {
        
        let value = optionalTextField.text!
        
        if Int(value) == nil {
            print("숫자가 아닙니다.")
        } else {
            print("숫자입니다.")
            print(Int(value) ?? "78")
            randomLabel.text = "\(Int(value)! )"
        }
    }
    
    @IBAction func alertButtonClicked(_ sender: UIButton) {
        
        //실제 앱 용량에 저장
        //앱을 껐다 켜도 유지됨
        UserDefaults.standard.set(
            optionalTextField.text!, forKey: "Nick")
        
        UserDefaults.standard.set(40, forKey: "Age")
//        //1.
//        let alert = UIAlertController(
//            title: "BMI 결과",
//            message: "당신은 정상 체중입니다.",
//            preferredStyle: .actionSheet)
//        //2.
//        let ok = UIAlertAction(title: "OK",
//                               style: .default)
//        let ok2 = UIAlertAction(title: "OK2",
//                               style: .destructive)
//        let ok3 = UIAlertAction(title: "OK3",
//                               style: .cancel)
//        let ok4 = UIAlertAction(title: "OK4",
//                               style: .cancel)
//        let ok5 = UIAlertAction(title: "OK5",
//                               style: .cancel)
//        //3. addAction 순서대로 붙음
//        alert.addAction(ok)
//        alert.addAction(ok3)
//        alert.addAction(ok2)
//        alert.addAction(ok5)
//        alert.addAction(ok4)
//        //4. 알럿 띄우기
//        present(alert, animated: true)
    }
    
}
