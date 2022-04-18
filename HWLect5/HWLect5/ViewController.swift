//
//  ViewController.swift
//  HWLect5
//
//  Created by Cezar_ on 15.04.22.
//

import UIKit

class Bar{
    static let shared = Bar()
    var soldBottles:[BeerStorage] = []
    
    init(){
    }
    
}

class BeerStorage {
    let name: String
    let price: Double
    let manufCountry: String
    let prod: String
    let isDark: Bool
    
    init(name: String, prod: String, isDark: Bool, manufCountry: String, price: Double){
        self.name = name
        self.price = price
        self.manufCountry = manufCountry
        self.prod = prod
        self.isDark = isDark
    }
    
    func getInfo() -> String {
        return "\(self.name)(\(self.isDark) производится \(self.prod) в \(self.manufCountry), стоит: \(self.price) "
    }
}

class newDay{
    var calendarDate: Int
    var cash: Double
    var countSoldBottles: Int

    
    init(calendarDate: Int, cash: Double, countSoldBottles: Int){
        self.calendarDate = calendarDate
        self.cash = cash
        self.countSoldBottles = countSoldBottles
    }
}






class ViewController: UIViewController {

    @IBOutlet var aloneLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let firstSoldBottle = BeerStorage.init(name: "WhiteMoon", prod: "N.RIGAS", isDark: true, manufCountry: "Russia", price: 103.0)
        let secondSoldBottle = BeerStorage(name: "7", prod: "Балтика", isDark: false, manufCountry: "Russia", price: 99.0)
        
        Bar.shared.soldBottles.append(contentsOf: [firstSoldBottle, secondSoldBottle])
        
        aloneLabel.textColor = UIColor.systemGreen
        aloneLabel.text = "Text"
    }
        
    
    @IBAction func didTapAloneButton(sender: UIButton){
        aloneLabel.textColor = UIColor.brown
        aloneLabel.text = Bar.shared.soldBottles.last?.getInfo()
    }

}

