//
//  YellowViewController.swift
//  SeSacWeek2
//
//  Created by Jude Song on 7/3/25.
//

import UIKit

class YellowViewController: UIViewController {
    
    //let nickname = "고래밥"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nickname = "칙촉"
        print(self, #function) // scope. 가까운 순서.
        view.backgroundColor = .red
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

}
