//
//  ViewController.swift
//  HWLect6P2
//
//  Created by Cezar_ on 24.05.22.
//

import UIKit

class ViewController: UIViewController {

    var movedView: UIView = UIView()
    var movedLabel: UILabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("ViewController viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController viewWillAppear")
        
        movedView.frame = CGRect(x: 100, y: 150, width: 300, height: 300)
        
        movedLabel.frame = movedView.bounds
        movedLabel.text = "Hello world"
        movedLabel.textAlignment = .center
        movedLabel.textColor = .white
        
       
        
        movedView.backgroundColor = UIColor.systemRed
        self.view.addSubview(movedView)
        movedView.addSubview(movedLabel)
        
        
        var newView = UIView(frame: CGRect(x: 50, y: 100, width: 15, height: 15))
        newView.backgroundColor = UIColor.systemYellow
        self.view.addSubview(newView)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewController viewDidAppear")
        
        movedView.backgroundColor = UIColor.systemGreen
        movedView.frame = CGRect(x: 200, y: 250, width: 200, height: 200)
        
        movedLabel.frame = movedView.bounds
        movedView.layer.cornerRadius = 100
        
        movedView.clipsToBounds = true
        
        movedView.layer.masksToBounds = false
        movedView.layer.shadowColor = UIColor.black.cgColor
        movedView.layer.shadowOpacity = 0.5
        movedView.layer.shadowOffset = CGSize(width: 10, height: 10)
        movedView.layer.shadowRadius = 1
    

    }
    
    @IBAction func didTapRemoveButton(){
        movedView.removeFromSuperview()
    }

}

