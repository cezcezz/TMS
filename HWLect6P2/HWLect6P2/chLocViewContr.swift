//
//  chLocViewContr.swift
//  HWLect6P2
//
//  Created by Cezar_ on 3.06.22.
//
import UIKit

class chLocViewContr: UIViewController {
    
    
    func showCircle(){
        circle.frame = CGRect(x: Double(randomIntX), y: Double(randomIntY), width: Double(randomIntSize), height: Double(randomIntSize))
        
        if randomIntX < 0 || (randomIntX) > (Int(self.view!.bounds.width) - randomIntSize) {
            randomIntX = (Int(self.view!.bounds.width) - randomIntSize)
        } else if randomIntY < 0 || (randomIntY + randomIntSize) > (Int(self.view!.bounds.height) - 250) {
            randomIntY = (Int(self.view!.bounds.height) - 250 - randomIntSize)
        }
    }
    
    @IBAction func didTapUpButton() {
        randomIntY = randomIntY - 10
        showCircle()
     
    }
    @IBAction func didTapDownButton() {
        randomIntY = randomIntY + 10
        showCircle()
     
    }
    @IBAction func didTapLeftButton() {
        randomIntX = randomIntX - 10
        showCircle()
   
    }
    @IBAction func didTapRightButton() {
        randomIntX = randomIntX + 10
        showCircle()
    
    }
    
    var randomIntX: Int = 1
    var randomIntY: Int = 1
    var randomIntSize: Int = 0

    var circle: UIView = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("MainViewController viewDidLoad")
        
        randomIntX = Int.random(in: 1..<Int(self.view!.bounds.width))
        randomIntY = Int.random(in: 1..<Int(self.view!.bounds.height))
        randomIntSize = Int.random(in: 21..<100)

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("MainViewController viewWillAppear")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("MainViewController viewDidAppear")
        
        circle.frame = CGRect(x: Double(randomIntX), y: Double(randomIntY), width: Double(randomIntSize), height: Double(randomIntSize))
        
        circle.backgroundColor = UIColor.red
        circle.layer.cornerRadius = CGFloat(randomIntSize/2)
        self.view.addSubview(circle)

        self.view.addSubview(circle)
    }


}

