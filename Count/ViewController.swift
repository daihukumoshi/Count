//
//  ViewController.swift
//  Count
//
//  Created by 三木　杏夏 on 2023/06/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var number: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func plus(){
        number = number + 1
        label.text = String(number)
        color()
        move()
    }
    
    @IBAction func minus(){
        number = number - 1
        label.text = String(number)
        color()
        move()
        
    }
    
    @IBAction func time(){
        number = number * 2
        label.text = String(number)
        color()
        move()
    }
    
    @IBAction func by(){
        number = number / 2
        label.text = String(number)
        color()
        move()
    }
    @IBAction func clear(){
        number = 0
        label.text = String(number)
        color()
        move()
    }
    
    @IBAction func color(){
        if number >= 10 {
            label.textColor = UIColor.red
        } else if number <= -10 {
            label.textColor = UIColor.blue
        } else{
            label.textColor = UIColor.black
        }
    }
    
    @IBAction func move(){
        var i: Int = 2
        var k: Int = 0
        while i < number{
            if number % i == 0{
                k+=1
            }
            i+=1
        }
        if k==0{
            label.textColor = UIColor.green
        }
    }
}

