//
//  ViewController.swift
//  StopWatch
//
//  Created by 高研老师1 on 16/9/26.
//  Copyright © 2016年 高研老师1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PauseBtn: UIButton!
    @IBOutlet weak var PlayBtn: UIButton!
    @IBOutlet weak var timeLabel: UILabel!
    
    var Counter = 0.0
    var Timer = Foundation.Timer()
    //var Timer:NSTimer!
    var IsPlaying = false
    
    //状态栏 前部分显示时间、网络等信息
    override var preferredStatusBarStyle : UIStatusBarStyle {
        //设置显示部分为白色
        return UIStatusBarStyle.lightContent
    }
    
    
    override func viewDidLoad() {
        timeLabel.text = String(Counter)
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
 
    @IBAction func resetButtonDidTouch(_ sender: AnyObject) {
        Timer.invalidate()
        IsPlaying = false
        Counter = 0.0
        timeLabel.text = String(Counter)
        //var isEnabled: Bool
//        PlayBtn.isEnabled = true
//        PauseBtn.isEnabled = true
    }
    @IBAction func playButtonDidTouch(_ sender: AnyObject) {
        if(IsPlaying){
            return
        }
        
        //isEnabled是否可用
//        PlayBtn.isEnabled = false
//        PauseBtn.isEnabled = true
        
        //启用计时器，控制每秒执行一次时间更新 repeats: true意思是重复调用计时器方法
        Timer = Foundation.Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.UpdateTimer), userInfo: nil, repeats: true)
        IsPlaying = true
    }
   
    @IBAction func pauseButtonDidTouch(_ sender: AnyObject) {
         //停止计时器则调用.invalidate()方法，释放空间
        Timer.invalidate()
        IsPlaying = false
    }
    
    //计时器触发事件
    func UpdateTimer() {
        Counter = Counter + 0.1
        timeLabel.text = String(format: "%.1f", Counter)

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

