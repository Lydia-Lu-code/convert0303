//
//  convertViewController.swift
//  convert0303
//
//  Created by 維衣 on 2021/3/4.
//

import UIKit

class convertViewController: UIViewController {

    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var input: UIButton!
    @IBOutlet var latLabel: [UILabel]!
    @IBOutlet var logLabel: [UILabel]!
    @IBOutlet weak var img: UIImageView!
    
    var textStr1:String = ""
    var textStr2:String = ""
    var log = [String]()
    var lat = [String]()
    var numArray = [String]()
    var numDouble: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        text1.text = "121.564101"
        text2.text = "25.033493"
        text1.text! = String(format: "%.6f", Double("\(String(describing: text1.text!))")!)
        text2.text! = String(format: "%.6f", Double("\(String(describing: text2.text!))")!)
        img.alpha = 0.35
    }
    
    @IBAction func send(_ sender: Any) {
        for (i, lat) in convert(text1.text!).enumerated() { latLabel[i].text = lat  }
        for (i, log) in convert(text2.text!).enumerated() { logLabel[i].text = log  }
        latLabel[2].text! = String(format: "%.6f", Double("\(String(describing: latLabel[2].text!))")!)
        logLabel[2].text! = String(format: "%.6f", Double("\(String(describing: logLabel[2].text!))")!)
    }
        
    func convert(_ number: String) -> Array<String>{
        guard (number.isEmpty == false) else{
            print{"text1 or text2 isEmpty"}
            return numArray
        }
        let num = Double(number)
        let d = Int(num!)
        let f = Int((num!-Double(d))*60)
        let s = (((num!-Double(d))*60)-Double(f))*60
        numArray = ["\(d)","\(f)","\(s)"]
        return numArray
    }
}

