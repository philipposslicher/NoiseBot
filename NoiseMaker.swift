//
//  NoiseMaker.swift
//  NoiseMaker
//
//  Created by Philippos Slicher on 11/30/15.
//  Copyright © 2015 Your School. All rights reserved.
//

import Foundation
import AVFoundation

class NoiseMaker {//
    
    init() {
        let url = NSBundle.mainBundle().pathForResource("sand", ofType:"wav")
        let fileURL = NSURL(fileURLWithPath: url!)
        sandPlayer = try! AVAudioPlayer(contentsOfURL: fileURL)
        
        let url2 = NSBundle.mainBundle().pathForResource("horn", ofType:"wav")
        let fileURL2 = NSURL(fileURLWithPath: url2!)
        hornPlayer = try! AVAudioPlayer(contentsOfURL: fileURL2)
    }
    
    private var sandPlayer: AVAudioPlayer?
    private var hornPlayer: AVAudioPlayer?
    private var XPPlayer: AVAudioPlayer?
    private var LOLPlayer: AVAudioPlayer?
    
    func playSand() {
        sandPlayer!.play()
    }
    
    func playHorn() {

        hornPlayer!.play()
    }
    
    func playXP() {
        let url = NSBundle.mainBundle().pathForResource("xp", ofType:"wav")
        let fileURL = NSURL(fileURLWithPath: url!)
        XPPlayer = try! AVAudioPlayer(contentsOfURL: fileURL)
        XPPlayer!.play()
    }
    
    func playLOL() {
        let url = NSBundle.mainBundle().pathForResource("lol", ofType:"wav")
        let fileURL = NSURL(fileURLWithPath: url!)
        LOLPlayer = try! AVAudioPlayer(contentsOfURL: fileURL)
        LOLPlayer!.play()
    }
}//