//
//  Rainbow.swift
//  HWLect9
//
//  Created by Cezar_ on 8.07.22.
//

import UIKit

class Rainbow: UIViewController{
    
    @IBOutlet var labelTextField: UITextField!
    @IBOutlet var simpleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func didTapAcceptButton(){
        simpleLabel.text = labelTextField.text
    }
    
    @IBAction func didTapGoNextScreenButton(){
        let str: UIStoryboard = UIStoryboard(name: "Rainbow", bundle: nil)
        let rainbowRed: RainbowRed = str.instantiateViewController(withIdentifier: "RainbowRed") as! RainbowRed
        
        
        self.navigationController?.pushViewController(rainbowRed, animated: true)
        rainbowRed.sharedString = self.labelTextField.text ?? "Error"
        
    }
    
}
