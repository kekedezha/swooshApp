//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Christian  Dezha on 2/1/23.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
        // Do any additional setup after loading the view.
    }
    
    //IBOutlet for next button. Will only be able to be selected when one of the categories on screen is selected.
    @IBOutlet weak var nextBtn: BorderButton!
    
    //IBAction for Next button
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    //IBAction for Men's button
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    //IBAction for Women's button
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    //IBAction for Co-ed button
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
}
