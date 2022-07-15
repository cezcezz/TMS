//
//  MovedCircleViewController.swift
//  HWLect11
//
//  Created by Cezar_ on 14.07.22.
//

import UIKit

class MovedCircleViewController: UIViewController {
    
    @IBOutlet var bigView: UIView!
    
    var circleView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    circleView.frame = CGRect(x: bigView.center.x - CGFloat(25), y: bigView.center.y - CGFloat(25), width: CGFloat(50), height: CGFloat(50))
        
        circleView.clipsToBounds = true
        circleView.layer.cornerRadius = CGFloat(25)
        circleView.backgroundColor = .systemGreen
        self.view.addSubview(circleView)
        
        


    }
    
    @IBAction func didTapStartButton(){
        self.firstMove()
    }
    @IBAction func didTapStopButton(){
        circleView.layer.removeAllAnimations()
    }
    
    func firstMove() {
        UIView.animate(withDuration: 3) {
            self.circleView.center = CGPoint(x: self.bigView.frame.minX, y: self.bigView.frame.maxY)
        } completion: { animation in
            print("Completed")
            self.secondMove()
        }
    }
    
    func secondMove() {
        UIView.animate(withDuration: 3) {
            self.circleView.center = CGPoint(x: self.bigView.frame.width/CGFloat(2), y: self.bigView.frame.minY)
        } completion: { animation in
            print("Completed")
            self.thirdMove()
        }
    }
    
    func thirdMove() {
        UIView.animate(withDuration: 3) {
            self.circleView.center = CGPoint(x: self.bigView.frame.maxX, y: self.bigView.frame.maxY)
        } completion: { animation in
            print("Completed")
            self.firstMove()
        }
        
    }


}

