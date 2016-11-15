//
//  ViewController.swift
//  奇偶判断
//
//  Created by 高研老师1 on 16/11/14.
//  Copyright © 2016年 高研老师1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputtext: UITextField!

    @IBOutlet weak var outputLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func calculateButton(_ sender: AnyObject) {
        
    let text = self.inputtext.text
        var number = Int(text!)!
        if number % 2 == 0
         {
            self.outputLabel.text = "偶数"
         }else{
            
            self.outputLabel.text = "奇数"
            }
        }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

