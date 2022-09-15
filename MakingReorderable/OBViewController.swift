//
//  OBViewController.swift
//  MakingReorderable
//
//  Created by Ömer Firat on 16.11.2020.
//  Copyright © 2020 Omer Firat. All rights reserved.
//

import UIKit
import Lottie

class OBViewController: UIViewController {
    
    var animationView: AnimationView?
    
    @IBOutlet weak var lblWelcome: UILabel!
    override  func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            self.performSegue(withIdentifier: "ShowMusicList", sender: self)
        })
        
        
        animationView = .init(name: "lottieAnimation")
        animationView?.frame = view.bounds
        animationView?.loopMode = .loop
        view.addSubview(animationView!)
        animationView?.isHidden = false
        animationView?.play()
        
        
        // Do any additional setup after loading the view.
    }
    /*let timer = Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) { timer in
     print("Timer fired!")
     }*/

    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
