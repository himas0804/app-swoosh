//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Sateesh Peddaiahgari on 12/17/20.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!
    
    

    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    

    @IBAction func onNextTapped(_ sender: Any) {
        
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }

    
    @IBAction func onMensTapped(_ sender: Any) {
        
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
       
        selectLeague(leagueType: "women")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
   
        selectLeague(leagueType:"coed")
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
