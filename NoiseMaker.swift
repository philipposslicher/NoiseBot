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
    
    let audioFilesArray = ["sand" , "horn" , "xp" , "lol"]
    
    var AudioPlayers: [AVAudioPlayer]
    
    init() {
        AudioPlayers = audioFilesArray.map { filename in
            let url = NSBundle.mainBundle().URLForResource(filename, withExtension: "wav")
            return try! AVAudioPlayer(contentsOfURL: url!)
        }
    }
    
    func play(index: Int) {
        if !AudioPlayers.isEmpty && index >= 0 && index < AudioPlayers.count {
            AudioPlayers[index].play()
        }
    }
    /*
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
*/
}//