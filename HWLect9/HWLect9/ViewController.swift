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
        let tapCateGameViewController: TapCateGame = str.instantiateViewController(withIdentifier: "TapCateGame") as! TapCateGame
        
        self.navigationController?.pushViewController(tapCateGameViewController, animated: true)
    }
    
    @IBAction func didTapLocatorCircle() {
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let locatorCircleViewController: LocatorCircleViewController = str.instantiateViewController(withIdentifier: "LocatorCircleViewController") as! LocatorCircleViewController
        
       self.navigationController?.pushViewController(locatorCircleViewController, animated: true)
    }
    
    @IBAction func didTapTrackViewController(){
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let trackingViewController: TrackingViewController = str.instantiateViewController(withIdentifier: "TrackingViewController") as! TrackingViewController
        
        self.navigationController?.pushViewController(trackingViewController, animated: true)
    }
    
    @IBAction func didTapReDoButton(){
        let str: UIStoryboard = UIStoryboard(name: "REDO", bundle: nil)
        let redoHome: REDOhome = str.instantiateViewController(withIdentifier: "REDOhome") as! REDOhome
        
        self.navigationController?.pushViewController(redoHome, animated: true)
    }

}

