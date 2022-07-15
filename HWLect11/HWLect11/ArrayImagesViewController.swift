//
//  ArrayImagesViewController.swift
//  HWLect11
//
//  Created by Cezar_ on 14.07.22.
//

import UIKit

class ArrayImagesViewController: UIViewController {
    
    var mainImageView = UIImageView()
    var nextImageView = UIImageView()
    
    var countImage: Int = 10

    var imageViewArray = [UIImageView]()
    var imageView: UIImageView?
    var nameArray = ["one","two","three","four","five","six","seven","eight","nine","zero"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        var count:Int = 0
        
        for name in nameArray {
            let image = UIImage(named: name)
            imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
            imageView!.image = image
            imageView!.contentMode = .scaleToFill
            imageViewArray.append(imageView!)
            count += 1
        }
       
        
        
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(didSwipeLeft))
        leftSwipe.direction = .left
        self.view.addGestureRecognizer(leftSwipe)

       
        mainImageView = imageViewArray[9]
        nextImageView = imageViewArray[0]
        self.view.addSubview(mainImageView)
        self.view.addSubview(nextImageView)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
      
        mainImageView.frame = CGRect(x: Int(self.view.frame.width)/2 - 50, y: Int(self.view.frame.height)/2 - 50, width: 100, height: 100)
        nextImageView.frame = CGRect(x: Int(self.view.frame.width) + 100, y: Int(self.view.frame.height)/2 - 50, width: 100, height: 100)
    }
    @objc func didSwipeLeft(){

        if countImage == 10{
            countImage = 0
        }
        
        UIImageView.animate(withDuration: 2, animations: {
            self.mainImageView.frame = CGRect(x: self.view.frame.minX - CGFloat(100), y: self.view.frame.height/CGFloat(2) - CGFloat(50), width: CGFloat(100), height: CGFloat(100))
            self.nextImageView.frame = CGRect(x: Int(self.view.frame.width)/2 - 50, y: Int(self.view.frame.height)/2 - 50, width: 100, height: 100)
        }, completion:  {_ in print("Completed")
            self.mainImageView.removeFromSuperview()
            self.mainImageView = self.nextImageView
            self.mainImageView.frame = CGRect(x: Int(self.view.frame.width)/2 - 50, y: Int(self.view.frame.height)/2 - 50, width: 100, height: 100)
            self.view.addSubview(self.mainImageView)
            self.nextImageView.removeFromSuperview()
        })
        self.nextImageView.frame = CGRect(x: Int(self.view.frame.width) + 100, y: Int(self.view.frame.height)/2 - 50, width: 100, height: 100)
        self.countImage += 1
        self.nextImageView = self.imageViewArray[self.countImage]
        self.countImage += 1
        self.view.addSubview(self.nextImageView)
    }
}
