//
//  RainbowYellow.swift
//  HWLect9
//
//  Created by Cezar_ on 9.07.22.
//

import UIKit

class RainbowYellow: UIViewController{
  
    @IBOutlet var sharedLabel: UILabel!
    @IBOutlet var rainbowLabel: UILabel!
    
    var localRainbow = "I"
    var sharedString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sharedLabel.text = sharedString
        rainbowLabel.text = localRainbow
    }
    
    @IBAction func didTapNextScreenButton(){
        let str: UIStoryboard = UIStoryboard.init(name: "Rainbow", bundle: nil)
        let rainbowGreen: RainbowGreen = str.instantiateViewController(withIdentifier: "RainbowGreen") as! RainbowGreen
        
        rainbowGreen.sharedString = self.sharedString
        rainbowGreen.localRainbow = self.localRainbow + rainbowGreen.localRainbow
        
        self.navigationController?.pushViewController(rainbowGreen, animated: true)
   
}
    
   
}
