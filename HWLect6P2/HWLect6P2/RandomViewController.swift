//
//  RandomViewController.swift
//  HWLect6P2
//
//  Created by Cezar_ on 25.05.22.
//

import UIKit

class RandomViewController: UIViewController {

    @IBOutlet weak var randomIntLabel: UILabel!
   
    
    var randomInt: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        randomInt = Int.random(in: 1..<100)
        randomIntLabel.text = "some random Int[0;100) is here ->"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        randomIntLabel.text = "some random Int[0;100) is here ->\(randomInt)"
    }


}
