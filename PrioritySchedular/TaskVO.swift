//
//  TaskVO.swift
//  PrioritySchedular
//
//  Created by Haru on 2020/11/19.
//

import Foundation

class TaskVO {              //VO : Value Object
    var title: String
    var done: Bool = false
    var priority: Int = 2   //기본값은 2번째 우선순위로 줌 = 0
    
    init(title: String) {   //쌤은 convenience init 쓰던데..
        self.title = title
    }
}
