//
//  ViewController.swift
//  HW3Lect
//
//  Created by Cezar_ on 8.04.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        print( "1.Подсчем суммы перегрузкой функций:\t\t\(sumNumbs(one: 6, sec: 12))\n")
//        print( "1.Подсчем суммы перегрузкой функций:\t\t\(sumNumbs(one: 89, sec: 22, thrd: 90))\n")
//        print( "1.Подсчем суммы перегрузкой функций:\t\t\(sumNumb(one: 41.1, sec: 22.5))\n")
//        print( "1.Подсчем суммы перегрузкой функций:\t\t\(sumNumb(one: 41, sec: 22.5))\n")
//        print( "1.Подсчем суммы перегрузкой функций:\t\t\(sumNumb(one: 41.1, sec: 22))\n")
     
        print( "2.Подсчет суммы цифр в 4х значном числе:\t\t\(fourDigitCount(numb: 4568))\n")
        print( "2.Подсчет суммы цифр в 4х значном числе:\t\t\(fourDigitCount(numb: 4263))\n")
        print( "2.Подсчет суммы цифр в 4х значном числе:\t\t\(fourDigitCount(numb: 691))\n")
        print( "2.Подсчет суммы цифр в 4х значном числе:\t\t\(fourDigitCount(numb: 400100))\n")
//        print(compareStrings(firstString: "авб", secondString: "ввш\n\n"))
//        print(compareStrings(firstString: "а", secondString: "б\n\n"))
//        print(compareStrings(firstString: "а", secondString: "a\n\n"))//1я строка идет кирилица "а"(ascii == 160), второй латинская "а"(ascii== 97)
//     //   print("4.CRASH APP\(foo())")
//        print("5.Возведение 2 в степень 5:\t\t\t\t\(expDefaultParametr(numb: 2,def: 5))\n")
//        print("5.Возведение числа 2 в степень 2(дефолт параметр):   \(expDefaultParametr(numb: 2))\n")
//        print("6.Подсчет факториала рекурсией:\t\t\(fuckCount(numb: 6))\n")
    }
    
    //Task1: Shoul to write universal funcs to math action with function overloading using
    func sumNumbs(one: Int, sec: Int) -> Double {
        var a = Double(one)
        var b = Double(sec)
        return a+b
    }
    func sumNumbs(one: Int,sec: Int,thrd: Int) -> Double{
        var a = Double(one)
        var b = Double(sec)
        var c = Double(thrd)
        return a+b+c
    }
    func sumNumb(one: Double, sec: Double) -> Double{
        return one+sec
    }
    func sumNumb(one: Int, sec: Double) -> Double{
        var a = Double(one)
        return a+sec
    }
    func sumNumb(one: Double, sec: Int) -> Double{
        var b = Double(sec)
        return one + b
    }
    
    
    
    
    //Task2: Count summ of each number of four-digit
    func fourDigitCount(numb:Int) -> Int {
        var sum: Int = 0
        var num = numb
        var i = 1
        while num > 9{
           num = num/10
            i = i*10
        }
        num = numb
            while num >= 1 {
               sum += num/i
            num = (num - num/i*i)
            i = i/10
            }
        return sum
    }
    //Task3: Compair strings "абв">"ввш"
    func compareStrings(firstString: String, secondString: String) -> Bool{
        return firstString > secondString
    }
    //Task4: Cicle func call to crash app
    func foo(numb: Int = 5) -> Int{
        var sum = 1
        sum = sum + numb
        foo(numb: sum)
        return sum
    }
    //Task5: Func exponentation
    func expDefaultParametr(numb:Int, def: Int = 2) -> Int{
        var num = numb
        var deflt = def
        if def == 0{
            return 1
        } else if def == 1{
            return numb
        }
        while deflt > 1 {
            num = num * numb
            deflt = deflt-1
        }
        return num
    }
    //Task6: FUCKtorial counting
    func fuckCount(numb:Int) -> Int {
        if (numb == 0){
            return 0
        } else if (numb == 1){
            return 1
        }
      return numb * fuckCount(numb: numb-1)
    }


}

