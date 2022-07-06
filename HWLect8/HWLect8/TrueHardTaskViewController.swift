//
//  TrueHardTaskViewController.swift
//  HWLect8
//
//  Created by Cezar_ on 6.07.22.
//

 import UIKit

class Transport{
    var meaning: String = "Move in space"
    
    init(meaning: String){
        self.meaning = meaning
    }
}


class GrounfTransport: Transport{
    var surface: String = "Move on the road"
    init(surface: String){
        self.surface = surface
    }
}

class AirTransport: GrounfTransport{
    var whereMoves: String = "Air"
    
    init(whereMoves: String){
        self.whereMoves = whereMoves
    }
}


  class TrueHardTaskViewController: UIViewController {

      
      override func viewDidLoad() {
          super.viewDidLoad()
         
          var telega: Transport = Transport(meaning: "Vozit drova")
          var Passat: GrounfTransport = GrounfTransport(surface: "Тыр-тыр-тыр")
          var AirBus: AirTransport = AirTransport(whereMoves: "Over THE WHOLE WORD!!")
          
        
          var telegaLabel: UILabel = UILabel(frame: CGRect(x: 20, y: 20, width: 200, height: 25))
          telegaLabel.text = telega.meaning
          
          Passat.meaning = "Vozit KARTOSHKA"
          
          var passatLabel1: UILabel = UILabel(frame: CGRect(x: 20, y: 70, width: 200, height: 25))
          var passatLabel2: UILabel = UILabel(frame: CGRect(x: 20, y: 95, width: 200, height: 25))
          passatLabel1.text = Passat.meaning
          passatLabel2.text = Passat.surface
          
          AirBus.meaning = "Letaet LYUDEY"
          AirBus.surface = "IN Air"
          
          var airBusLabel1: UILabel = UILabel(frame: CGRect(x: 20, y: 150, width: 200, height: 25))
          var airBusLabel2: UILabel = UILabel(frame: CGRect(x: 20, y: 175, width: 200, height: 25))
          var airBusLabel3: UILabel = UILabel(frame: CGRect(x: 20, y: 200, width: 200, height: 25))
          airBusLabel1.text = AirBus.meaning
          airBusLabel2.text = AirBus.surface
          airBusLabel3.text = AirBus.whereMoves
      }
      
     
  }
  
 
