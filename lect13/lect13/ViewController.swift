//
//  ViewController.swift
//  lect13
//
//  Created by Cezar_ on 23.05.22.
//

import UIKit
import AVFoundation

extension UIView{
    
    func corderRadius(radius: Int) {
        self.layer.cornerRadius = CGFloat(radius)
        self.clipsToBounds = true
    }
    
    func drawShadow() {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: -1, height: -1)
        layer.shadowRadius = 30
    }
    
    func drawGradient() {
        let gradient = CAGradientLayer()
        
        gradient.colors = [UIColor.white.cgColor, UIColor.red.cgColor, UIColor.blue.cgColor]
        gradient.transform = CATransform3DMakeRotation(CGFloat.pi / 2, 0, 0, 1)
        gradient.frame = bounds
        layer.addSublayer(gradient)
    }
}

class ViewController: UIViewController {
    
    @IBOutlet var customView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        customView.corderRadius(radius: 20)
        customView.drawShadow()
        customView.drawGradient()
    }
    
    
    
    
    
    
    
    
    
    
    
    


}

