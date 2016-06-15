//
//  PlayViewController.swift
//  LivePlay
//
//  Created by 成杰 on 16/6/15.
//  Copyright © 2016年 swiftc.org. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.whiteColor()
        
        view.addSubview(connectButton)
        
        view.addSubview(playButton)
    }
    
    private let commonBtnW = CGFloat(100)
    private let commonBtnH = CGFloat(40)
    
    private var connectButton: UIButton {
        
        let buttonY = view.bounds.height - commonBtnH
        let buttonF = CGRect(x: 0,
                             y: buttonY,
                             width: commonBtnW,
                             height: commonBtnH)
        
        let button = UIButton(frame: buttonF)
        button.backgroundColor = UIColor.greenColor()
        button.setTitle("encode", forState: .Normal)
        button.addTarget(self,
                         action: #selector(connect),
                         forControlEvents: .TouchUpInside)
        
        return button
    }
    
    private var playButton: UIButton {
        
        let buttonX = view.bounds.width - commonBtnW
        let buttonY = view.bounds.height - commonBtnH
        let buttonF = CGRect(x: buttonX,
                             y: buttonY,
                             width: commonBtnW,
                             height: commonBtnH)
        
        let button = UIButton(frame: buttonF)
        button.backgroundColor = UIColor.greenColor()
        button.setTitle("play", forState: .Normal)
        button.addTarget(self,
                         action: #selector(play),
                         forControlEvents: .TouchUpInside)
        
        return button
    }
    
    dynamic func connect() {
        print(#function)
    }
    
    dynamic func play() {
        print(#function)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
}
