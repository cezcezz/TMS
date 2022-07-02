//
//  ViewController.swift
//  Lect17
//
//  Created by Cezar_ on 13.06.22.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    var imageView: UIImageView?
    var scrollView: UIScrollView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        imageView = UIImageView(image: UIImage(named: "1"))
        scrollView = UIScrollView(frame: self.view.bounds)
        
        scrollView?.minimumZoomScale = 1.0
        scrollView?.maximumZoomScale = 10.0
        
        scrollView?.delegate = self
        
        self.view.addSubview(scrollView!)
        
        scrollView?.addSubview(imageView!)
        
        
      
        
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }

}

