//
//  RainbowLightBlue.swift
//  HWLect9
//
//  Created by Cezar_ on 9.07.22.
//

import UIKit

class RainbowLightBlue: UIViewController{
  
    @IBOutlet var sharedLabel: UILabel!
    @IBOutlet var rainbowLabel: UILabel!
    
    var localRainbow = "B"
    var sharedString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sharedLabel.text = sharedString
        rainbowLabel.text = localRainbow
    }
    
    @IBAction func didTapNextScreenButton(){
        let str: UIStoryboard = UIStoryboard(name: "Rainbow", bundle: nil)
        let rainbowBlue: RainbowBlue = str.instantiateViewController(withIdentifier: "RainbowBlue") as! RainbowBlue
        
        rainbowBlue.sharedString = self.sharedString
        rainbowBlue.localRainbow = self.localRainbow + rainbowBlue.localRainbow
        
        self.navigationController?.pushViewController(rainbowBlue, animated: true)
   
}
   
}
