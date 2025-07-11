//
//  DramaTableViewCell.swift
//  SeSacWeek2
//
//  Created by Jude Song on 7/10/25.
//

import UIKit

//아웃렛명만 설정하는 곳! 이름 때문에 존재함.
class DramaTableViewCell: UITableViewCell {

    @IBOutlet var posterImageView: UIImageView!
    @IBOutlet var overviewLabel: UILabel!
    
    //스토리보드를 깨운다는 의미
    //절대적으로 달라지지 않는 디자인 같은 경우에 적용
    //있을 때랑 없을 때랑 무슨 차이일까?
    //변경되지 않을 디자인에 대한 정리
    override func awakeFromNib() {
        super.awakeFromNib()
        print(#function)
    }
    
    //이전 셀에 남아있는 흔적들을 지우는 애
    override func prepareForReuse() {
        super.prepareForReuse()
        print(#function)
        
        
        backgroundColor = .white
    }
    
}
