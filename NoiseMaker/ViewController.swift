import UIKit

class ViewController: UIViewController {//
    
    let noiseMaker = NoiseMaker()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func playHorn(sender: UIButton) {
        noiseMaker.playHorn()
    }
    @IBAction func playSand(sender: UIButton) {
        noiseMaker.playSand()
    }
    @IBAction func playXP(sender: UIButton) {
        noiseMaker.playXP()
    }
    @IBAction func playLOL(sender: UIButton) {
        noiseMaker.playLOL()
    }
}//

