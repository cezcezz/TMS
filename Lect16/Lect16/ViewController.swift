//
//  ViewController.swift
//  Lect16
//
//  Created by Cezar_ on 30.05.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var topSize: NSLayoutConstraint!
    @IBOutlet var loadViewGreen: UIView!
    @IBOutlet var logoViewWhite: UIView!
    var blurView: UIVisualEffectView?

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadViewGreen.layer.zPosition = 1000
        
        let tapGest: UIGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(longer))
        self.view.addGestureRecognizer(tapGest)

    }

//    func applyBlurEffect() {
//        let blurEffect = UIBlurEffect(style: .extraLight)
//        let blurEffectView = UIVisualEffectView(effect: blurEffect)
//        blurEffectView.frame = self.view.bounds
//        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        self.view.addSubview(blurEffectView)
//
//    }
    @objc func longer(){
        
        let blurEffect = UIBlurEffect(style: .light)
        blurView = UIVisualEffectView(effect: blurEffect)
        blurView?.frame = self.view.bounds
        blurView?.alpha = 0
        
        logoViewWhite.alpha = 0
        
        self.view.addSubview(blurView!)
        self.view.addSubview(logoViewWhite)
        
        UIView.animate(withDuration: 1) {
            self.view.layoutIfNeeded()
           // self.blurView?.alpha = 0.5
            self.logoViewWhite.alpha = 1
        }
    }

}

