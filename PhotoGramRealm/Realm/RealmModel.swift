//
//  RealmModel.swift
//  PhotoGramRealm
//
//  Created by 김지연 on 2023/09/04.
//

import Foundation
import RealmSwift


class DiaryTable: Object {
    
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var diaryTitle: String // 일기 제목(필수)
    @Persisted var diaryDate: Date // 일기 날짜(필수)
    @Persisted var contents: String? // 일기 내용(옵션
    @Persisted var photo: String? // 일기 사진 URL (옵션)
    @Persisted var diaryLike: Bool // 즐겨찾기 기능(필수)
    //@Persisted var diaryPin: Bool
    @Persisted var diarySummary: String
    
    convenience init(diaryTitle: String, diaryDate: Date, diaryContent: String?, diaryPhoto: String?) {
        self.init()
        
        self.diaryTitle = diaryTitle
        self.diaryDate = diaryDate
        self.contents = diaryContent
        self.photo = diaryPhoto
        self.diaryLike = true
        self.diarySummary = "제목은 '\(diaryTitle)'이고, 내용은 '\(diaryContent ?? "")'입니다."
    }
}
