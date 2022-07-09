//
//  TrackingViewController.swift
//  HWLect9
//
//  Created by Cezar_ on 8.07.22.
//

import UIKit

class TrackingViewController: UIViewController{
    
    var viewCircle: UIView = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewCircle.frame = CGRect(x: 100, y: 100, width: 40, height: 40)
        self.view.addSubview(viewCircle)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewCircle.layer.cornerRadius = CGFloat(20)
        viewCircle.backgroundColor = .systemGreen
        
        let trackGest = UIPanGestureRecognizer(target: self, action: #selector(didSwipeTrack))
        viewCircle.addGestureRecognizer(trackGest)
        viewCircle.isUserInteractionEnabled = true
    }
    
    
    @objc func didSwipeTrack(gestureRecognizer: UIPanGestureRecognizer){
        if gestureRecognizer.state == .began {
                print("Began")
        } else if gestureRecognizer.state == .changed{
            print("Changing")
            let translation = gestureRecognizer.translation(in: self.view)
            let newX = viewCircle.center.x + translation.x
            let newY = viewCircle.center.y + translation.y
            
            viewCircle.center = CGPoint(x: newX, y: newY)
            gestureRecognizer.setTranslation(CGPoint.zero, in: self.view)
           
        }else if gestureRecognizer.state == .ended{
            print("Ended")
          // let translation = gestureRecognizer.translation(in: self.view)

        }
    }
    
}
