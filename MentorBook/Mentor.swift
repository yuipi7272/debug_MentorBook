//
//  Mentor.swift
//  MentorBook
//
//  Created by Tomoya Tanaka on 2021/06/28.
//

import UIKit

class Mentor {
	
	var name: String      // メンター名
	var course: String    // 担当コース
	var imageName: String // 顔写真(画像の名前)
	
	// 初期化 引数でメンター名、担当コース、顔写真をもらって設定している
	init(name: String, course: String, imageName: String) {
		self.name = name
		self.course = course
		self.imageName = imageName
	}
	
	func getImage() -> UIImage {
		return UIImage(named: imageName)!
	}
	
}
