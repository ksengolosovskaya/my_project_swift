//
//  ViewController.swift
//  home5!!
//
//  Created by Ксения Голосовская on 11.02.2022.
//

import UIKit

var array = [Beer(name: "BeerOne", coast: 5.5, number: 100), Beer(name: "BeerSecond", coast: 10.25, number: 100), Beer(name: "BeerThird", coast: 10.0, number: 100)]



class ViewController: UIViewController {

    @IBOutlet weak var labelBeer1: UILabel!
    @IBOutlet weak var buttonBeer1Minus: UIButton!
    @IBOutlet weak var labelBeer1Count: UILabel!
    @IBOutlet weak var buttonBeer1Add: UIButton!
    @IBOutlet weak var labelBeer2: UILabel!
    @IBOutlet weak var buttonBeer2Minus: UIButton!
    @IBOutlet weak var buttonBeer2Add: UIButton!
    @IBOutlet weak var labelBeer2Count: UILabel!
    @IBOutlet weak var labelBeer3: UILabel!
    @IBOutlet weak var buttonBeer3Minus: UIButton!
    @IBOutlet weak var buttonBeer3Add: UIButton!
    @IBOutlet weak var labelBeer3Count: UILabel!
    @IBOutlet weak var buttonSale: UIButton!
    @IBOutlet weak var buttonStartDay: UIButton!
    @IBOutlet weak var buttonEndDay: UIButton!
    @IBOutlet weak var labelMessage: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelBeer1.text = array[0].name
        labelBeer2.text = array[1].name
        labelBeer3.text = array[2].name
        buttonBeer1Minus.setTitle("-", for: .normal)
        buttonBeer1Add.setTitle("+", for: .normal)
        buttonBeer2Minus.setTitle("-", for: .normal)
        buttonBeer2Add.setTitle("+", for: .normal)
        buttonBeer3Add.setTitle("+", for: .normal)
        buttonBeer3Minus.setTitle("-", for: .normal)
        labelBeer1Count.text = String(0)
        labelBeer2Count.text = String(0)
        labelBeer3Count.text = String(0)
        
    }
    
    
    @IBAction func buttonBeer1MinusPressed(_ sender: UIButton) {
        labelBeer1Count.text = Menneger.shared.minus(value: labelBeer1Count.text!)
    }
    

    @IBAction func buttonBeer1AddPressed(_ sender: UIButton) {
        labelBeer1Count.text = Menneger.shared.add(value: labelBeer1Count.text!, type: 0)
    }
    @IBAction func buttonBeer2MinusPressed(_ sender: UIButton) {
        labelBeer2Count.text = Menneger.shared.minus(value: labelBeer2Count.text!)
        
    }
    @IBAction func buttonBeer2Add(_ sender: UIButton) {
        labelBeer2Count.text = Menneger.shared.add(value: labelBeer2Count.text!, type: 0)
    }
    @IBAction func buttonBeer3MinussPressed(_ sender: UIButton) {
        labelBeer3Count.text = Menneger.shared.minus(value: labelBeer3Count.text!)
    }
    @IBAction func buttonBeer3AddPressed(_ sender: UIButton) {
        labelBeer3Count.text = Menneger.shared.add(value: labelBeer3Count.text!, type: 0)
    }
    @IBAction func buttonSalePressed(_ sender: UIButton) {
        labelMessage.text = Menneger.shared.sale(BeerOneCount: labelBeer1Count.text!, Beer2Count: labelBeer2Count.text!, Beer3Count: labelBeer3Count.text!)
        array[0].number -= Int(labelBeer1Count.text!)!
        array[1].number -= Int(labelBeer2Count.text!)!
        array[0].number -= Int(labelBeer3Count.text!)!
        labelBeer1Count.text = "0"
        labelBeer2Count.text = "0"
        labelBeer3Count.text = "0"
        
        
    }
    @IBAction func buttonStartDayPressed(_ sender: UIButton) {
        Menneger.shared.startDay()
    }
    @IBAction func buttonEndDayPressed(_ sender: UIButton) {
        labelMessage.text = Menneger.shared.endDay()
    }
}

