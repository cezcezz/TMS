//
//  RainbowPurple.swift
//  HWLect9
//
//  Created by Cezar_ on 9.07.22.
//

import UIKit

class RainbowPurple: UIViewController{
  
    @IBOutlet var sharedLabel: UILabel!
    @IBOutlet var rainbowLabel: UILabel!
    
    var localRainbow = "W"
    var sharedString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sharedLabel.text = sharedString
        rainbowLabel.text = localRainbow
    }
    
    @IBAction func didTapGoHome(){
        self.navigationController?.popToRootViewController(animated: true)
   
}
   
}
