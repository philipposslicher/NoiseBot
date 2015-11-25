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
        let url = NSBundle.mainBundle().pathForResource("sand", ofType:"wav")
        let fileURL = NSURL(fileURLWithPath: url!)
        player = try! AVAudioPlayer(contentsOfURL: fileURL)
        player!.play()
    }
    
    
    @IBAction func playHorn(sender: UIButton) {
        let url = NSBundle.mainBundle().pathForResource("horn", ofType:"wav")
        let fileURL = NSURL(fileURLWithPath: url!)
        player = try! AVAudioPlayer(contentsOfURL: fileURL)
        player!.play()
    }
    
    @IBAction func playXP(sender: UIButton) {
        let url = NSBundle.mainBundle().pathForResource("xp", ofType:"wav")
        let fileURL = NSURL(fileURLWithPath: url!)
        player = try! AVAudioPlayer(contentsOfURL: fileURL)
        player!.play()
    }
    
    @IBAction func playLOL(sender: UIButton) {
        let url = NSBundle.mainBundle().pathForResource("lol", ofType:"wav")
        let fileURL = NSURL(fileURLWithPath: url!)
        player = try! AVAudioPlayer(contentsOfURL: fileURL)
        player!.play()
    }

}//

