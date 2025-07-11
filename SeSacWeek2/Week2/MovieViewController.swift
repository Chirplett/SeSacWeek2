//
//  MovieViewController.swift
//  SeSacWeek2
//
//  Created by Jude Song on 7/8/25.
//

import UIKit

struct Movie {
    
    let title: String
    let open: String
    let runtime: Int
    
}

class MovieViewController: UIViewController {

    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var movieLabel: UILabel!
    
    //리스트 요소가 3천개라고 생각해보기
    let list: [Movie] = [
        Movie(title: "어벤져스", open: "2025", runtime: 134),
        Movie(title: "쥬라기", open: "2018", runtime: 120),
        Movie(title: "라이프", open: "2015", runtime: 130)]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let number = Int.random(in: 0...list.count - 1) //2라고 생각
//        movieLabel.text = list.randomElement() (이렇게 하면 난장판 됨)
        movieLabel.text = "\(list[number].title)"
        
        
        print(Date()) //current time (영국표준시가 기준임)
        
        //1. 국가마다 시간이 다른 것을 맞춰줘야 함
        //2. 사용자 입장에서 날짜를 표현하기
    
        let format = DateFormatter()
        
        format.dateFormat = "yyyy년 MM월 dd일 hh시 mm분 eeee입니다"
        //이 부분이 이해가 잘 안 감...
        
//        format.dateStyle = .medium
//        format.timeStyle = .medium
//        format.calendar = Calendar(identifier: .gregorian)
        format.locale = Locale(identifier: "ko_KR")
        
        var component = DateComponents()
        component.year = 2025
        //왜 얘는 var고 format은 let일까?
        
        let result = format.string(from: Date())
        
        dateLabel.text = result

    }
    

}
