//
//  catGameViewController.swift
//  HWLect6P2
//
//  Created by Cezar_ on 3.06.22.
//

import UIKit

class catGameViewController: UIViewController {

    
    @objc func longer(){
        randomIntSize = Int.random(in: 21..<85)
        randomIntX = Int.random(in: 1..<Int(self.view!.bounds.width)-randomIntSize)
        randomIntY = Int.random(in: 1..<Int(self.view!.bounds.height)-randomIntSize)
        
        
        circle.frame = CGRect(x: Double(randomIntX), y: Double(randomIntY), width: Double(randomIntSize), height: Double(randomIntSize))
        circle.layer.cornerRadius = CGFloat(randomIntSize/2)
        self.view.addSubview(circle)
        
    }
    
    
    
    var randomIntX: Int = 1
    var randomIntY: Int = 1
    var randomIntSize: Int = 0

    var circle: UIView = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // loadViewGreen.layer.zPosition = 1000
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        randomIntX = Int.random(in: 1..<Int(self.view!.bounds.width))
        randomIntY = Int.random(in: 1..<Int(self.view!.bounds.height))
        randomIntSize = Int.random(in: 21..<100)
        
        circle.frame = CGRect(x: Double(randomIntX), y: Double(randomIntY), width: Double(randomIntSize), height: Double(randomIntSize))
        
        circle.backgroundColor = UIColor.red
        circle.layer.cornerRadius = CGFloat(randomIntSize/2)
        self.view.addSubview(circle)
        
        let tapGest: UIGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(longer))
        circle.addGestureRecognizer(tapGest)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.view.addSubview(circle)
    }
    
    

}

