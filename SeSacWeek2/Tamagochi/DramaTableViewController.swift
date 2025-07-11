//
//  DramaTableViewController.swift
//  SeSacWeek2
//
//  Created by Jude Song on 7/10/25.
//

import UIKit
import Kingfisher

class DramaTableViewController: UITableViewController {
    
    let image = ["star.fill", "star", "heart", "heart.fill", "pencil", "xmark", "person", "star.fill", "star", "heart", "heart.fill", "pencil", "xmark", "person", "star.fill", "star", "heart", "heart.fill", "pencil", "xmark", "person", "star.fill", "star", "heart", "heart.fill", "pencil", "xmark", "person", "star.fill", "star", "heart", "heart.fill", "pencil", "xmark", "person", "star.fill", "star", "heart", "heart.fill", "pencil", "xmark", "person", "star.fill", "star", "heart", "heart.fill", "pencil", "xmark", "person", "star.fill", "star", "heart", "heart.fill", "pencil", "xmark", "person", "star.fill", "star", "heart", "heart.fill", "pencil", "xmark", "person", "star.fill", "star", "heart", "heart.fill", "pencil", "xmark", "person", "star.fill", "star", "heart", "heart.fill", "pencil", "xmark", "person", "star.fill", "star", "heart", "heart.fill", "pencil", "xmark", "person", "star.fill", "star", "heart", "heart.fill", "pencil", "xmark", "person", "star.fill", "star", "heart", "heart.fill", "pencil", "xmark", "person","star.fill", "star", "heart", "heart.fill", "pencil", "xmark", "person","star.fill", "star", "heart", "heart.fill", "pencil", "xmark", "person","star.fill", "star", "heart", "heart.fill", "pencil", "xmark", "person","star.fill", "star", "heart", "heart.fill", "pencil", "xmark", "person","star.fill", "star", "heart", "heart.fill", "pencil", "xmark", "person","star.fill", "star", "heart", "heart.fill", "pencil", "xmark", "person","star.fill", "star", "heart", "heart.fill", "pencil", "xmark", "person","star.fill", "star", "heart", "heart.fill", "pencil", "xmark", "person","star.fill", "star", "heart", "heart.fill", "pencil", "xmark", "person","star.fill", "star", "heart", "heart.fill", "pencil", "xmark", "person","star.fill", "star", "heart", "heart.fill", "pencil", "xmark", "person","star.fill", "star", "heart", "heart.fill", "pencil", "xmark", "person","star.fill", "star", "heart", "heart.fill", "pencil", "xmark", "person"]
    
//    var nickname: String? = "Chirplett"

    override func viewDidLoad() {
        super.viewDidLoad()

//        tableView.rowHeight = 80
        
        //Optional > !, ??, ?, 옵셔널 바인딩(if let / guard)
        
//      1번 조건문으로
//        if nickname == nil {
//            print("닉네임을 설정해주세요")
//        } else {
//            print(nickname!)
//        }
        
        //2번 옵셔널 바인딩 if let
//        if let name = nickname { //nil이 아니면 벗겨서 넣음
//            print(name)
//        } else { //nil인 경우
//            print("닉네임을 설정해주세요")
//        }

    }

//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "헤더 영역.섹션 타이틀"
//    }
    
    //섹션 커스터마이징할 때 사용 가능한 메서드(스토리보드로는 못 함)
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        <#code#>
//    }
        
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return image.count
//    } 이렇게 하면 cell을 못 가져옴


// 먼 소린지..
//    func test() ->String {
//        let num = 4
//        
//        if num < 5 {
//            print("5보다 작음")
//            return "5보다 작음"
//        }
//        print("test")
//        return "테스트"
//    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return image.count

    }
    //numberofSections는 default로 1개임. 호출 안 해도 알아서 가져옴
    
    //디자인 (셀 디자인 포함)
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        print(#function, indexPath.row)
        
        //UITableViewCell -> DramaTableViewCell로 바꾸어야 함
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "dramaCell", for: indexPath) as! DramaTableViewCell //커스텀셀이라서 연결 따로 해주어야 함
        //씬과 로직을 연결하는 것. 타입 캐스팅. 씬 - let~Path까지. 로직이 DramaTableViewCell
        
//        let name = image[indexPath.row]
//        cell.posterImageView.image = UIImage(systemName: name)
        
        let url = URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdf7K3uDuc1sLPUH9vYG3IqxRNvM3DEN_7sw&s")!
        cell.posterImageView.kf.setImage(with: url)
        
        cell.posterImageView.backgroundColor = .clear
        cell.posterImageView.layer.cornerRadius = 10
        cell.overviewLabel.text = "dfajsdlkfjdsalka"
        cell.overviewLabel.numberOfLines = 0
        //매 셀마다 이걸 그리게 하는 게 맞나?
        //셀 자체에 디자인을 미리 먼저 입혀서 주는 건 어땨.
        
        if indexPath.row == 4 {
            cell.backgroundColor = .yellow
        } else {
            cell.backgroundColor = .white
        }
        
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        print(#function, indexPath.row)
        
        if indexPath.row == 0 {
            return 160
        } else {
            return 80
        }
        
//    if indexPath.row == 0 {
//        return 160
//    }
//    return 80

    }

    
}
