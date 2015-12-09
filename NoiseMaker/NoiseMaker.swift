import AVFoundation

class NoiseMaker {
    
    let audioFileNames = ["horn", "lol", "sand", "xp", "bassel", "carl"]
    var players: [AVAudioPlayer]
    
    init() {
        players = audioFileNames.map { filename in
            let url = NSBundle.mainBundle().URLForResource(filename, withExtension: "wav")
            return try! AVAudioPlayer(contentsOfURL: url!)
        }
    }
    
    func play(index: Int) {
        if !players.isEmpty && index >= 0 && index < players.count {
            players[index].play()
        }
    }
    
}