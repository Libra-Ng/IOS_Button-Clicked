//
//  ViewController.swift
//  Button_Clicked
//
//  Created by student on 2019/10/24.
//  Copyright © 2019年 Libra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var label: UILabel!
    var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        label = UILabel(frame: CGRect(x: 100, y: 100, width: 200, height: 44))
        label.text = "hello Swift"
        label.font = UIFont.systemFont(ofSize: 22)
        label.textColor = UIColor.black
        self.view.addSubview(label)
        
        btn = UIButton(frame: CGRect(x: 100, y: 400, width: 50, height: 37))
        btn.setTitle("Click", for: .normal)
        btn.backgroundColor = UIColor.green
        btn.setTitleColor(UIColor.black, for: .highlighted)
        self.view.addSubview(btn)
        btn.addTarget(self, action: #selector(cilcked), for: .touchUpInside)
    }
    
    @IBAction func cilcked() {
        if label.text! == "Clicked" {
            label.text = "Hello Swift"
            btn.setTitle("Click me", for: .normal)
        } else {
            label.text = "I am Clicked"
            btn.setTitle("Click!", for: .normal)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

