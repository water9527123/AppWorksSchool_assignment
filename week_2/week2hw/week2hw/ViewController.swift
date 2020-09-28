//
//  ViewController.swift
//  week2hw
//
//  Created by nono chan  on 2020/9/23.
//

import UIKit

class ViewController: UIViewController {
    let text = ["Lorem ipsum dolor sit amet,consectetur adipiscing elit.Maecenastempus."
                ,"Contrary to popular belief,Lorem Ipsum is not simply random text."
                ,"looked up one of the more obscure Latinwords, consectetur"
                ,"from a Lorem Ipsum passage, and going through the cites of the word"
                ,"Thisbookisatreatiseonthetheoryofethics,verypopularduringthe."
                ,"This book is a treatise on the theory of ethics,very popular during the."
                ,"The first line of Lorem Ipsum,Lorem ipsum dolor sit amet.."]
    let colorArray = [UIColor.red, UIColor.green, UIColor.blue,UIColor.purple,UIColor.yellow,UIColor.brown,UIColor.gray]

    @IBOutlet weak var lable1: UILabel!
    
    @IBAction func button(_ sender: Any) {
        lable1.text = text.randomElement()
        view.backgroundColor = colorArray.randomElement()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

