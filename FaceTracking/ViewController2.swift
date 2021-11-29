//
//  ViewController2.swift
//  FaceTracking
//
//  Created by Prathmesh Bhatt on 11/12/21.
//

import UIKit
import AVFoundation

class ViewController2: UIViewController {
    var player: AVAudioPlayer?
    var musicType: String?
    
    @IBOutlet weak var button: UIButton!
    
    @IBAction func button(_sender: Any) {
        if let player = player , player.isPlaying{
            
        }
        else {
            let urlString = Bundle.main.path(forResource:  "audio1" , ofType: "mp3")

            do{
               try  AVAudioSession.sharedInstance().setMode(.default)
                try AVAudioSession.sharedInstance().setActive(true , options: .notifyOthersOnDeactivation)
                guard let urlString = urlString else {
                    return
                }
                
                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                guard let player = player else {
                    return
                }
                player.play()
            }
            catch{
              print("something went wrong")
            }
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is ViewController{
            let vc = segue.destination as? ViewController
            
            musicType =  vc?.savedResultForface
        }
    }

  

}
