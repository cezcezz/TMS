//
//  REDOhome.swift
//  HWLect9
//
//  Created by Cezar_ on 8.07.22.
//

import UIKit

class REDOhome: UIViewController{
    
    @IBOutlet var pullUpLabel: UILabel!
    @IBOutlet var pullDownLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
        
        let pullUpGest = UISwipeGestureRecognizer(target: self, action: #selector(pullUpMethod))
        self.view.addGestureRecognizer(pullUpGest)
        let pullDownGest = UISwipeGestureRecognizer(target: self, action: #selector(pullDownMethod))
        self.view.addGestureRecognizer(pullDownGest)
        pullDownGest.direction = .down
        pullUpGest.direction = .up
        
        
    }
   
    @objc func pullUpMethod(){
        let str: UIStoryboard = UIStoryboard(name: "REDO", bundle: nil)
        let customClass: CustomClass = str.instantiateViewController(withIdentifier: "CustomClass") as! CustomClass
        
        self.navigationController?.pushViewController(customClass, animated: true)
    }
    
    @objc func pullDownMethod(){
        let str: UIStoryboard = UIStoryboard(name: "REDO", bundle: nil)
        let rainbow: Rainbow = str.instantiateViewController(withIdentifier: "Rainbow") as! Rainbow
        
        self.navigationController?.pushViewController(rainbow, animated: true)
    }
    
    
}
