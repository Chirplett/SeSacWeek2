//
//  FirstTableViewController.swift
//  SeSacWeek2
//
//  Created by Jude Song on 7/9/25.
//

import UIKit

class FirstTableViewController: UITableViewController {
    
    let list = ["Joo", "Babe", "Finn", "Dan", "Joo", "Babe", "Finn", "Dan", "Joo", "Babe", "Finn", "Dan", "Joo", "Babe", "Finn", "Dan", "Joo", "Babe", "Finn", "Dan", "Joo", "Babe", "Finn", "Dan", "Joo", "Babe", "Finn", "Dan", "Joo", "Babe", "Finn", "Dan", "Joo", "Babe", "Finn", "Dan", "Joo", "Babe", "Finn", "Dan", "Joo", "Babe", "Finn", "Dan"]

    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)

    }
    
    
    
    //1.셀 갯수: numberOfRowsInSection
    //e.g.카카오톡 친구 300명
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(#function)
        return list.count // return은 한줄에 한해서 생략 가능함 (return implicit...)
    }
    //2.셀 디자인 및 데이터 처리: cellForRowAt
    //e.g.친구마다 프로필 사진, 이미지, 상메 다 다름
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print(#function, indexPath)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "firstCell", for: indexPath)
        
//        if indexPath.row == 0 {            cell.textLabel?.text = list[indexPath.row]
//        } else if indexPath.row == 1 {
//            cell.textLabel?.text = list[indexPath.row]
//        } else if indexPath.row == 2 {
//            cell.textLabel?.text = list[indexPath.row]
        
        if indexPath.row == 0 {
            cell.textLabel?.text = list[0]
        } else if indexPath.row == 1 {
            cell.textLabel?.text = list[1]
        } else if indexPath.row == 2 {
            cell.textLabel?.text == list[2]
        } else {
            cell.textLabel?.text = "Out of Range"
        }
        
        cell.textLabel?.text = list[indexPath.row]

//        }
        
        
        return cell
    }
    //3.셀 높이: heightForRowAt
    //e.g. 적당히 몇 정도를 평균으로 잡을지
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        print(#function)
        return 100
    }


}
