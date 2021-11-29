//
//  ViewcontrollerNew1.swift
//  FaceTracking
//
//  Created by Prathmesh Bhatt on 11/14/21.
//

import Foundation
import UIKit
import SceneKit
import ARKit
import AVFoundation
import Lottie

class ViewcontrollerNew1: UIViewController, ARSCNViewDelegate {
    
    
    let animationView = AnimationView()
       override func viewDidLoad() {
           super.viewDidLoad()
        
        
           
           }
           private func setUpAnimation()
           {
            
            animationView.frame = CGRect(x: 0, y: 20, width: 400, height: 500)
            animationView.animation = Animation.named("face")
            animationView.backgroundColor = .white
            animationView.contentMode = .scaleAspectFit
            animationView.loopMode = .loop
            animationView.play()
            view.addSubview(animationView)
           }
       }
