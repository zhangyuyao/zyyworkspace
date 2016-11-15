//
//  ViewController.swift
//  CustomFont
//
//  Created by 高研老师1 on 16/9/27.
//  Copyright © 2016年 高研老师1. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    var data = ["30 Days Swift", "这些字体特别适合打「奋斗」和「理想」", "谢谢「造字工房」，本案例不涉及商业使用", "使用到造字工房劲黑体，致黑体，童心体", "呵呵，再见🤗 See you next Project😜", "微博 @Allen朝辉",
                "测试测试测试测试测试测试",
                "123",
                "Alex",
                "@@@@@@"]
   

    
//    var fontNames = ["MFTongXin_Noncommercial-Regular", "MFJinHei_Noncommercial-Regular", "MFZhiHei_Noncommercial-Regular", "edundot","Gaspar Regular"]
    var fontNames = ["MFTongXin_Noncommercial-Regular", "MFJinHei_Noncommercial-Regular", "MFZhiHei_Noncommercial-Regular"]
    
    var fontRowIndex = 0
    
    @IBOutlet weak var changeFontButton: UIButton!
    
    @IBOutlet weak var fontTableView: UITableView!
    
    @IBAction func changeFontDidTouch(_ sender: AnyObject) {
        
       fontRowIndex = (fontRowIndex + 1) % 5
       print(fontNames[fontRowIndex])
        fontTableView.reloadData()
    }
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fontTableView.dataSource = self
        fontTableView.delegate = self
        
        //在IOS 中，使用[UIFont familyNames]这个方法获取72种系统字体。
        for family in UIFont.familyNames{
            for font in UIFont.fontNames(forFamilyName: family){
                print(font)
            }
        }
        
        //美化界面，给button设置圆角
        changeFontButton.layer.cornerRadius = 30
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 35
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = fontTableView.dequeueReusableCell(withIdentifier: "FontCell",for:indexPath)
        
        let text = data[(indexPath as NSIndexPath).row]
        cell.textLabel?.text = text
        cell.textLabel?.textColor = UIColor.white
        cell.textLabel?.font = UIFont(name:self.fontNames[fontRowIndex],size:16)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }


}

