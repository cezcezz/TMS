//
//  FirstViewController.swift
//  Lect6P2
//
//  Created by Cezar_ on 4.07.22.
//


import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet var aloneLabel: UILabel!
    @IBOutlet var customTitleLabel: UILabel!
    var customTitle: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       
        customTitleLabel.text = customTitle
    }


}
