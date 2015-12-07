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
    
    let AudioFilesArray = ["sand" , "horn" , "xp" , "lol"]
    
    let AudioPlayers = [AVAudioPlayer]()
    init() {
        AudioPlayers = AudioFilesArray.map( { (filename: String) -> AVAudioPlayer
            in
            let url = NSBundle.mainBundle().URLForResource(filename,
                withExtension: "wav")
            let fileURL = NSURL(fileURLWithPath: url!)
            return AVAudioPlayer(contentsOfURL: fileURL!)
        })
    }
    
    private let sandPlayer: AVAudioPlayer
    private let hornPlayer: AVAudioPlayer
    private let XPPlayer: AVAudioPlayer
    private let LOLPlayer: AVAudioPlayer
    
    func playSand() {
        sandPlayer.play()
    }
    
    func playHorn() {
        hornPlayer.play()
    }
    
    func playXP() {
        XPPlayer.play()
    }
    
    func playLOL() {
        LOLPlayer.play()
    }
}//