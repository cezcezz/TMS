//
//  RainbowBlue.swift
//  HWLect9
//
//  Created by Cezar_ on 9.07.22.
//

import UIKit

class RainbowBlue: UIViewController{
  
    @IBOutlet var sharedLabel: UILabel!
    @IBOutlet var rainbowLabel: UILabel!
    
    var localRainbow = "O"
    var sharedString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sharedLabel.text = sharedString
        rainbowLabel.text = localRainbow
    }
    
    @IBAction func didTapNextScreenButton(){
        let str: UIStoryboard = UIStoryboard(name: "Rainbow", bundle: nil)
        let rainbowPurple: RainbowPurple = str.instantiateViewController(withIdentifier: "RainbowPurple") as! RainbowPurple
        
        rainbowPurple.sharedString = self.sharedString
        rainbowPurple.localRainbow = self.localRainbow + rainbowPurple.localRainbow
        
        self.navigationController?.pushViewController(rainbowPurple, animated: true)
}
   
}
