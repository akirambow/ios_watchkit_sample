//
//  ViewController.swift
//  watchkitSample
//
//  Created by 木村旭 on 2015/05/31.
//  Copyright (c) 2015年 akirambow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mHeadLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateHeadLabel( aCount:Int ) {
        if aCount % 2 == 0 {
            mHeadLabel.text = "Hello!!"
        }
        else {
            mHeadLabel.text = "World!!"
        }
    }
    
}

