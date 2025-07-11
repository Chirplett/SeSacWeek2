//
//  MovieTableViewController.swift
//  SeSacWeek2
//
//  Created by Jude Song on 7/10/25.
//

import UIKit

class MovieTableViewController: UITableViewController {
    
    @IBOutlet var movieTextField: UITextField!
    
    var movie = ["쥬라기공원", "어벤져스", "괴물", "겨울왕국"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        movie.append("Babe")
        
    }
    
    //디자인
  @IBAction func checkButtonClicked(_ sender: UIButton) {
      
      if movieTextField.text != nil {
          print(movieTextField)
      } else {
          print("nil입니당")
      }
      
//  옵셔널 바인딩
//      if let text = movieTextField.text {
//          print(text)
//      } else {
//          print("nil임니당")
//      }
      
      
      
      //String?이 옵셔널 스트링 타입인 것은 맞짐ㄴ
      //애플은 어떻게 처리하고 있냐면
      //nil이라면 알아서 ""로 돌려주기 때문에
      //절대로 nil이 발생할 일이 텍스트필드에서는 없다
      if movieTextField.text!.isEmpty {
          print("글씨를 아무것도 안 써서 추가할 수 없어요.")
      } else {
          movie.append(movieTextField.text!) //데이터가 추가되면
          tableView.reloadData() //새로고침과 동일. (테이블뷰 다시 로드)
          //매우 중요함!! 데이터가 달라지면 뷰도 바꿔주어야 한다!
          
      }
//        if movieTextField.text != nil {
//            if movieTextField.text!.isEmpty {
//                movia.append(movieTextField.text!)
//        }
//        
//        print(#function)
//        movie.append(movieTextField.text!)  //데이터가 추가되면 이에 따라 테이블뷰도 다시 로드해주어야 함
        //        print("all done?")
        //        print(movie)
        
//        tableView.reloadData() //새로고침과 동일. (테이블뷰 다시 로드)
//        //매우 중요함!! 데이터가 달라지면 뷰도 바꿔주어야 한다!
    }
    
    //데이터
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(#function)
        return movie.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
        
        cell.textLabel?.text = movie[indexPath.row]
        
        cell.imageView?.image = UIImage(systemName: "star.fill")
    //nil인지 아닌지 체크 - 옵셔널 체이닝
        //nil이면 실행 , nil이 아니면 실행
        
        if cell.imageView != nil { //if subTitle imageView가 없다면..
            cell.imageView!.image = UIImage(systemName: "star.fill")
        }
        
        
        print(#function, indexPath)
        //100% 모든 셀들이 적용되도록 설정해주기
        
        if indexPath.row == 4 {
            cell.backgroundColor = .yellow
        } else {
            cell.backgroundColor = .lightGray
        }
        return cell
        
    }
    
    //높이
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    //클릭되었을 때
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(#function, indexPath, movie)
        
        movie.remove(at: indexPath.row)
        tableView.reloadData()
        
        //        if indexPath.row == 0 {
        //            movie.remove(at: 0)
        //            tableView.reloadData()
        //        } else if indexPath.row == 1 {
        //            movie.remove(at: indexPath.row)
        //            tableView.reloadData()
        //        }
        
    }


}
