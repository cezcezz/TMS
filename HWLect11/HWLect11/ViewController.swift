//
//  ViewController.swift
//  HWLect11
//
//  Created by Cezar_ on 13.07.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapMovedCircleButton(){
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let movedCircleViewController: MovedCircleViewController = str.instantiateViewController(withIdentifier: "MovedCircleViewController") as! MovedCircleViewController
        
        self.navigationController?.pushViewController(movedCircleViewController, animated: true)
    }
    
    @IBAction func didTapArrayImagesViewController(){
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let arrayImagesViewController: ArrayImagesViewController = str.instantiateViewController(withIdentifier: "ArrayImagesViewController") as! ArrayImagesViewController
        
        self.navigationController?.pushViewController(arrayImagesViewController, animated: true)
    }

}

