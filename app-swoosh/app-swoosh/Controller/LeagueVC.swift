//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Shilpa Meda on 2/21/18.
//  Copyright © 2018 Verizon. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {


    var player: Player!

    @IBOutlet var nextBtn: BorderButton!



    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        player = Player()

    }

    @IBAction func onNextBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue" , sender: self)




    }

    @IBAction func onMensTapped(_ sender: Any) {

        selectLeague(leagueType: "mens")

    }

    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")

    }


    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")

    }

    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player

        }
    }










    //    override func didReceiveMemoryWarning() {
    //        super.didReceiveMemoryWarning()
    //        // Dispose of any resources that can be recreated.
    //    }
    //

    /*
     // MARK: - Navigation

     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */

}
