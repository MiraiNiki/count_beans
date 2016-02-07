//
//  ViewController.swift
//  count2
//
//  Created by MiraiNIKI on 2016/02/02.
//  Copyright (c) 2016年 UnivercityofTsukuba. All rights reserved.
//

import UIKit
import AVFoundation //AVFoundationを使って音をだします。

class ViewController: UIViewController {

    var num: Int = 0
    @IBOutlet var label: UILabel!
    
    //効果音ごとに変数を準備する
    var audioPlayer_a : AVAudioPlayer?
    var audioPlayer_s : AVAudioPlayer?
    var audioPlayer_m : AVAudioPlayer?
    var audioPlayer_d : AVAudioPlayer?
    var audioPlayer_c : AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        //効果音のファイルを指定
        let sound_data_a = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("buttonp", ofType: "mp3")!)
         audioPlayer_a = AVAudioPlayer(contentsOfURL: sound_data_a, error: nil)
        
        let sound_data_s = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("buttonm", ofType: "mp3")!)
        audioPlayer_s = AVAudioPlayer(contentsOfURL: sound_data_s, error: nil)
        
        let sound_data_m = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("button", ofType: "mp3")!)
        audioPlayer_m = AVAudioPlayer(contentsOfURL: sound_data_m, error: nil)
        
        let sound_data_d = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("buttond", ofType: "mp3")!)
        audioPlayer_d = AVAudioPlayer(contentsOfURL: sound_data_d, error: nil)
        
        let sound_data_c = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("buttonc", ofType: "mp3")!)
        audioPlayer_c = AVAudioPlayer(contentsOfURL: sound_data_c, error: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func plus(){
        audioPlayer_a!.play() //音を出す
        if num+1 < 999 {
            num = num + 1
        }
        label.text = String(num)
    }
    
    @IBAction func minus(){
        audioPlayer_s!.play()
        if num > 0 {
        num = num - 1
        }
        label.text = String(num)
    }
    
    @IBAction func mul(){
        audioPlayer_m!.play()
        num = num * 2
        label.text = String(num)
    }

    @IBAction func dev(){
        audioPlayer_d!.play()
        num = num / 2
        label.text = String(num)
    }
    
    @IBAction func reset(){
        audioPlayer_c!.play()
        num = 0
        label.text = String(num)
    }
}

