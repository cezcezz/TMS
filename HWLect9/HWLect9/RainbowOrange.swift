//
//  RainbowOrange.swift
//  HWLect9
//
//  Created by Cezar_ on 9.07.22.
//

import UIKit

class RainbowOrange: UIViewController{
  
    @IBOutlet var sharedLabel: UILabel!
    @IBOutlet var rainbowLabel: UILabel!
    
    var localRainbow = "A"
    var sharedString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sharedLabel.text = sharedString
        rainbowLabel.text = localRainbow
    }
    
    @IBAction func didTapNextScreenButton(){
        let str: UIStoryboard = UIStoryboard(name: "Rainbow", bundle: nil)
        let rainbowYellow: RainbowYellow = str.instantiateViewController(withIdentifier: "RainbowYellow") as! RainbowYellow
        
        rainbowYellow.sharedString = self.sharedString
        rainbowYellow.localRainbow = self.localRainbow + rainbowYellow.localRainbow
        
        self.navigationController?.pushViewController(rainbowYellow, animated: true)
   
}
   
}
