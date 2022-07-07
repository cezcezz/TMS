//
//  ViewController.swift
//  HWLect9
//
//  Created by Cezar_ on 7.07.22.
//

import UIKit

class ViewController: UIViewController {


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Выбирай"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.title = "Menu"
    }
    
    @IBAction func didTapCateGameButton(){
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let TapCateGameViewController: TapCateGame = str.instantiateViewController(withIdentifier: "TapCateGame") as! TapCateGame
        
        self.navigationController?.pushViewController(TapCateGameViewController, animated: true)
    }

}

