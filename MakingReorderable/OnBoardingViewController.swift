//
//  OnBoardingViewController.swift
//  MakingReorderable
//
//  Created by Ömer Firat on 16.11.2020.
//  Copyright © 2020 Omer Firat. All rights reserved.
//

import UIKit
import Lottie

class OnBoardingViewController: UIViewController {
    var animationView: AnimationView?
    @IBOutlet var animationStoryboard: UIView!
    override func viewDidLoad() {
        super.viewDidLoad();              animationView = .init(name: "lottieAnimation")
              animationView?.frame = view.bounds
              animationView?.loopMode = .loop
              view.addSubview(animationView!)
              animationView?.play()

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
