/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit
import AVFoundation

class ViewController: UIViewController {//

    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    @IBAction func playSand(sender: UIButton) {
        let url = NSBundle.mainBundle().URLForResource("Darude Sandstorm Sound Effect",
            withExtension: "wav")
        player = AVAudioPlayer(contentsOfURL: url, error: nil)
        player!.play()
    }
    
    
    @IBAction func playHorn(sender: UIButton) {
    }
    
    @IBAction func playXP(sender: UIButton) {
    }
    
    @IBAction func playLOL(sender: UIButton) {
    }

}//

