//
//  ViewController.swift
//  app-swoosh
//
//  Created by Shilpa Meda on 2/21/18.
//  Copyright © 2018 Verizon. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    @IBOutlet var swoosh: UIImageView!
    @IBOutlet var bgImg: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //        swoosh.frame = CGRect(x: view.frame.size.width/2 - swoosh.frame.size.width/2, y: 50, width: swoosh.frame.size.width, height: swoosh.frame.size.height)
        //
        //        bgImg.frame = view.frame

    }
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue) {
        
    }
    


}

