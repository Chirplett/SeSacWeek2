//
//  TamaDetailViewController.swift
//  SeSacWeek2
//
//  Created by Jude Song on 7/9/25.
//

import UIKit

class TamaDetailViewController: UIViewController {

    @IBOutlet var nicknameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nicknameTextField.backgroundColor = .white
        nicknameTextField.tintColor = .clear //(텍스트필드에 커서 깜빡이는 거 안 보이게 하고 싶을 때 눈가림)
        nicknameTextField.placeholder = "닉네임을 입력해 주세요."
    }
    
    //바버튼아이템에 액션을 연결했을 때, unwind같은 애랑 액션을 두 개썼을 때 - 이런 식으로 검증해보기
    @IBAction func saveButtonClicked(_ sender: UIBarButtonItem) {
        print(#function)
    }
    

}
