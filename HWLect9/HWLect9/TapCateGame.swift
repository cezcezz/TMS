//
//  TapCateGame.swift
//  HWLect9
//
//  Created by Cezar_ on 7.07.22.
//

 import UIKit

 class TapCateGame: UIViewController {

     enum colorFour: CaseIterable{
        case green
        case blue
        case white
        case red
         
         func getColor() -> UIColor{
             switch self {
             case .green:
                 return UIColor.systemGreen
             case .blue:
                 return UIColor.systemBlue
             case .white:
                 return UIColor.white
             case .red:
                 return UIColor.systemRed
             }
         }
     }
     
     var circleView: UIView! = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
     
     var viewSize: Int = Int.random(in: 10...55)
     var cordinateX: Int = 0
     var cordinateY: Int = 0
     var leftView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 220, height: 120))
     
     override func viewDidLoad() {
         super.viewDidLoad()
         // Do any additional setup after loading the view.
         
         
         leftView.frame = CGRect(x: Int(self.view.bounds.width)/2 - 110, y: Int(self.view.bounds.height) - 140, width: 220, height: 120)
         leftView.backgroundColor = .gray
         
         let upSwipeGest = UISwipeGestureRecognizer(target: self, action: #selector(moveUpView))
            upSwipeGest.direction = .up
            leftView.addGestureRecognizer(upSwipeGest)
         let downSwipeGest = UISwipeGestureRecognizer(target: self, action: #selector(moveDownView))
            downSwipeGest.direction = .down
            leftView.addGestureRecognizer(downSwipeGest)
         let leftSwipeGest = UISwipeGestureRecognizer(target: self, action: #selector(moveLeftView))
            leftSwipeGest.direction = .left
            leftView.addGestureRecognizer(leftSwipeGest)
         let rightSwipeGest = UISwipeGestureRecognizer(target: self, action: #selector(moveRightView))
            rightSwipeGest.direction = .right
            leftView.addGestureRecognizer(rightSwipeGest)
         
         cordinateX = Int.random(in: 0...Int(self.view!.bounds.width) - Int(circleView.bounds.width))
         cordinateY = Int.random(in: Int(navigationController!.navigationBar.bounds.maxY) + Int(circleView.bounds.height)...Int(self.view!.bounds.height) - Int(circleView.bounds.height))
         
         circleView.frame = CGRect(x: cordinateX, y: cordinateY, width: viewSize, height: viewSize)
         circleView.layer.cornerRadius = CGFloat(viewSize/2)
         circleView.backgroundColor = colorFour.allCases.randomElement()!.getColor()

         self.view.addSubview(leftView)
         
     }
     
     override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(animated)
         

     }
     
     override func viewDidAppear(_ animated: Bool) {
         super.viewDidAppear(animated)
         
         self.view.addSubview(circleView)
     }
     
     @objc func moveLeftView(){
         let const: Int = 15
         
         if ((cordinateX - const) < 0) {
                cordinateX = 0
         }else{
                cordinateX -= const
         }
         circleView.frame = CGRect(x: cordinateX, y: cordinateY, width: viewSize, height: viewSize)
     }
    
     @objc func moveRightView(){
         let const: Int = 15
         
         if ((cordinateX + const) > (Int(self.view.bounds.width) - viewSize)) {
                cordinateX = Int(self.view.bounds.width) - viewSize
         }else{
                cordinateX += const
         }
         circleView.frame = CGRect(x: cordinateX, y: cordinateY, width: viewSize, height: viewSize)
     }
     
     @objc func moveUpView(){
         let const: Int = 15
         
         var topbarHeight: CGFloat {
                 return UIApplication.shared.statusBarFrame.size.height +
                     (self.navigationController?.navigationBar.frame.height ?? 0.0)
             }
         
         if (cordinateY - const) < Int(topbarHeight) {
             cordinateY = Int(topbarHeight) + 1
         } else{
             cordinateY -= const
         }
         circleView.frame = CGRect(x: cordinateX, y: cordinateY, width: viewSize, height: viewSize)
     }
     
     
     @objc func moveDownView(){
         let const: Int = 15
         
         
         
         if cordinateY + const > (Int(self.view.bounds.height) - Int(leftView.bounds.height) - viewSize - 20){
             cordinateY = Int(self.view.bounds.height) - Int(leftView.bounds.height) - viewSize - 20
         } else {
             cordinateY += const
         }
         circleView.frame = CGRect(x: cordinateX, y: cordinateY, width: viewSize, height: viewSize)
     }
     
     
     
     
 
 }

