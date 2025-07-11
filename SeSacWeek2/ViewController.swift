//
//  ViewController.swift
//  SeSacWeek2
//
//  Created by Jude Song on 7/3/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(self, #function)
        view.backgroundColor = .red
    }
    
    //wwedc24+ 17+ 15+
    //동적으로 뷰가 나타나기 직전에 실행되는 함수
    override func viewIsAppearing(_ animated: Bool) {
        super.viewIsAppearing(animated)
        print(self, #function)
        view.backgroundColor = .white
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(self, #function)
        view.backgroundColor = .red


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

