//
//  ViewController.swift
//  MentorBook
//
//  Created by Tomoya Tanaka on 2021/06/28.
//

import UIKit

class ViewController: UIViewController {
	
	var mentorArray: [Mentor] = []
	
	@IBOutlet var imageView: UIImageView!
	@IBOutlet var nameLabel: UILabel!
	@IBOutlet var courseLabel: UILabel!
	
	// 表示するメンターの番号
	var index: Int = 0

	override func viewDidLoad() {
		super.viewDidLoad()
		
		mentorArray.append(Mentor(name: "ながた", course: "iPhone", imageName: "nagata.jpg"))
		mentorArray.append(Mentor(name: "りょう", course: "Unity", imageName: "ryo.jpg"))
		mentorArray.append(Mentor(name: "たいてぃ", course: "WebS,WebD", imageName: "taiti.jpg"))

		setUI()
	}
	
	func setUI() {
		imageView.image = mentorArray[index].getImage()
		nameLabel.text = mentorArray[index].name
		courseLabel.text = mentorArray[index].course
	}

	@IBAction func mae() {
		index = index - 1
		if index < 0 {
			// indexの値が0より小さくなったらindexをmentorArrayの数 - 1にする
			index = mentorArray.count - 1
		}
	}
	
	@IBAction func tugi() {
		index = index + 1
		if mentorArray.count >= index {
			// indexの値がmentorArrayの数以上になったらindexを0にする
			index = 0
		}
		setUI()
	}
}
