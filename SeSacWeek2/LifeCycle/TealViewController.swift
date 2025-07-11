//
//  TealViewController.swift
//  SeSacWeek2
//
//  Created by Jude Song on 7/3/25.
//

import UIKit

class TealViewController: UIViewController {
    
    @IBOutlet var oneButton: UIButton!
    @IBOutlet var twoButton: UIButton!
    @IBOutlet var threeButton: UIButton!
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var fourButton: UIButton!
    
    let list = ["자갈치", "고래밥", "칙촉", "짱구", "오예스", "오징어땅콩"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(self, #function)
        view.backgroundColor = .red
        
        
        let random = list.randomElement()
        print(random)
        resultLabel.text = random
        
        oneButton.tag = 0
        twoButton.tag = 1
        threeButton.tag = 2
        
//        oneButton.setTitle("자갈치", for: .normal)
        twoButton.setTitle(list[3], for: .normal)
        threeButton.setTitle(list[2], for: .normal)
        fourButton.setTitle(list[1], for: .normal)
    }
    
    //wwedc24+ 17+ 15+
    //동적으로 뷰가 나타나기 직전에 실행되는 함수
    override func viewIsAppearing(_ animated: Bool) {
        super.viewIsAppearing(animated)
        print(self, #function)
        view.backgroundColor = .lightGray
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(self, #function)
        view.backgroundColor = .green


    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(self, #function)

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(self, #function)

    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(self, #function)

    }
    
    //하나의 액션으로 세 개의 버튼을 처리할 수 있다?! - 레이블 글자 바꾸기
    @IBAction func oneButtonClicked(_ sender: UIButton) {
        print(#function, sender.currentTitle)
        //currentTitle: 버튼의 현재 타이틀을 가져옴
//        resultLabel.text = "고래밥"
//        resultLabel.textColor = .brown
        //1. 조건문으로 버튼을 구분하는 방법 고래밥을 자갈치로 바꾼다면 두 군데를 바꾸어 주어야 함. 귀찮아짐..
        //조건문: 추가한 버튼이 조건문에 없거나, 예외처리가 없을 때!
//        if sender == oneButton {
//            resultLabel.text = "자갈치"
//        } else if sender == twoButton {
//            resultLabel.text = "칙촉"
//        } else if sender == threeButton {
//            resultLabel.text = "짱구"
//        } else if sender == fourButton {
//            resultLabel.text = "오예스"
//        } else {
//            resultLabel.text = "이런 문제가 발생했어요"
//        }
//
        //2. sender의 title를 이용하는 방법
//        resultLabel.text = sender.currentTitle!
        // 매개변수 sender는 이벤트가 발생한 객체를 의미함. 여기서는 클릭한 버튼
        //예외케이스 매번 생각해야ㅎ 한다. ㄱ개발자는.
        
        //3. tag
        //sender.tag를 이용하는 방법
        print(sender.tag)
        resultLabel.text = list[sender.tag] // 매개변수와 배열 list의 인덱스가 같도록 설정
        // sender.tag는 버튼의 tag 프로퍼티를 의미함. 버튼의 tag 프로퍼티는 Int 타입으로, 각 버튼에 고유한 값을 부여할 수 있다.

        
        
        
    }
    
    
    


}
