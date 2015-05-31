//
//  InterfaceController.swift
//  watchkitSample WatchKit Extension
//
//  Created by 木村旭 on 2015/05/31.
//  Copyright (c) 2015年 akirambow. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var mCount:Int = 0

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func onTapped() {
        println("Watch : Button is tapped")
        mCount++
        WKInterfaceController.openParentApplication(
            ["onTappedCount" : mCount],
            reply:{ (replyInfo, error) -> Void in
                if let replyObject = replyInfo {
                    let message:String = replyObject["fromApp"] as! String
                    println(message)
                }
        })
    }

}
