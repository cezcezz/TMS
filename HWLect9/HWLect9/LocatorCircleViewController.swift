//
//  LocatorCircleViewController.swift
//  HWLect9
//
//  Created by Cezar_ on 7.07.22.
//

import UIKit

class LocatorCircleViewController: UIViewController{
    
    var viewCircle:UIView = UIView()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        
        let didTapgest = UITapGestureRecognizer(target: self, action: #selector(didTapSomeWhereInView))
        self.view.addGestureRecognizer(didTapgest)
        
      // let didTapDelete = UITapGestureRecognizer(target: self, action: #selector(didTapDeleteView))
        self.view.addSubview(viewCircle)
    }
    
                                   
                                   
    @objc func didTapSomeWhereInView(sender: UITapGestureRecognizer){ //если при тапе координаты попадают в круг, то круг удаляем
        
        var topbarHeight: CGFloat {
                return UIApplication.shared.statusBarFrame.size.height +
                    (self.navigationController?.navigationBar.frame.height ?? 0.0)
            }
        let cordinateX: Int = Int.random(in: 1...Int(self.view.frame.width)/2)
        let cordinateY: Int = Int.random(in: Int(topbarHeight)...Int(self.view.frame.height)/2)
        
        
        
        if viewCircle.frame.intersects(CGRect(x: Int(sender.location(in: view).x), y: Int(sender.location(in: view).y), width: 1, height: 1)){
        print("попадание")
        viewCircle.removeFromSuperview()
        viewCircle.frame = CGRect(x: cordinateX, y: cordinateY, width: 40, height: 40)
            self.view.addSubview(viewCircle)
        } else{
        viewCircle.frame = CGRect(x: Int(sender.location(in: view).x)-20, y: Int(sender.location(in: view).y)-20, width: 40, height: 40)
        viewCircle.layer.cornerRadius = CGFloat(20)
        viewCircle.backgroundColor = .systemGreen
        }
    }
//    @objc func didTapDeleteView(sender: UITapGestureRecognizer){
//        let cordinateX: Int = Int.random(in: 1...Int(self.view.frame.width)/2)
//        let cordinateY: Int = Int.random(in: 1...Int(self.view.frame.height)/2)
//
//        if viewCircle.frame.intersects(CGRect(x: Int(sender.location(in: view).x), y: Int(sender.location(in: view).y), width: 1, height: 1)){
//        print("попадание")
//        viewCircle.removeFromSuperview()
//        viewCircle.frame = CGRect(x: cordinateX, y: cordinateY, width: 40, height: 40)
//            self.view.addSubview(viewCircle)
//        }
//    }
 
}
