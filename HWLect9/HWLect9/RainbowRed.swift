//
//  RainbowRed.swift
//  HWLect9
//
//  Created by Cezar_ on 9.07.22.
//
 
 import UIKit

 class RainbowRed: UIViewController{
   
     @IBOutlet var sharedLabel: UILabel!
     @IBOutlet var rainbowLabel: UILabel!
     
     var localRainbow = "R"
     var sharedString = ""
     
     override func viewDidLoad() {
         super.viewDidLoad()
         
         sharedLabel.text = sharedString
         rainbowLabel.text = localRainbow
     }
     
     @IBAction func didTapNextScreenButton(){
         let str: UIStoryboard = UIStoryboard(name: "Rainbow", bundle: nil)
         let rainbowOrange: RainbowOrange = str.instantiateViewController(withIdentifier: "RainbowOrange") as! RainbowOrange
         
         rainbowOrange.sharedString = self.sharedString
         rainbowOrange.localRainbow = self.localRainbow + rainbowOrange.localRainbow
         
         
         self.navigationController?.pushViewController(rainbowOrange, animated: true)
    
 }
     
     
}

