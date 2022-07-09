//
//  RainbowGreen.swift
//  HWLect9
//
//  Created by Cezar_ on 9.07.22.
//

import UIKit

class RainbowGreen: UIViewController{
  
    @IBOutlet var sharedLabel: UILabel!
    @IBOutlet var rainbowLabel: UILabel!
    
    var localRainbow = "N"
    var sharedString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sharedLabel.text = sharedString
        rainbowLabel.text = localRainbow
    }
    
    @IBAction func didTapNextScreenButton(){
        let str: UIStoryboard = UIStoryboard(name: "Rainbow", bundle: nil)
        let rainbowLightBlue: RainbowLightBlue = str.instantiateViewController(withIdentifier: "RainbowLightBlue") as! RainbowLightBlue
        
        rainbowLightBlue.sharedString = self.sharedString
        rainbowLightBlue.localRainbow = self.localRainbow + rainbowLightBlue.localRainbow
        
        self.navigationController?.pushViewController(rainbowLightBlue, animated: true)
   
}
   
}
