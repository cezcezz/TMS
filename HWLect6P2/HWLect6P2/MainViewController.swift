//
//  MainViewController.swift
//  HWLect6P2
//
//  Created by Cezar_ on 24.05.22.
//

import UIKit

class MainViewController: UIViewController {

    @IBAction func didTapAloneButton() {

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("MainViewController viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("MainViewController viewWillAppear")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("MainViewController viewDidAppear")
    }


}
