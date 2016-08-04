//
//  SwiftController.swift
//  OCAndSwift
//
//  Created by 李旭 on 16/8/4.
//  Copyright © 2016年 李旭. All rights reserved.
//

import Foundation
import UIKit

class SwiftController: UIViewController {
    
    var myLabel: UILabel = UILabel()
    var myView: UIView = UIView()
    var myButton: UIButton = UIButton()
    var myImageView: UIImageView = UIImageView()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.grayColor()
        
        self.myLabel = createLabel()
        self.view.addSubview(self.myLabel)
        
        self.myView = createView()
        self.view.addSubview(self.myView)
        
        self.myButton = createButton()
        self.view.addSubview(self.myButton)
        
        self.myImageView = createImageView()
        self.view.addSubview(self.myImageView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // UILabel
    func createLabel() -> UILabel {
        
        let label: UILabel = UILabel(frame: CGRectMake(10, 80, self.view.frame.size.width-20, 30))
        label.backgroundColor = UIColor.greenColor()
        label.textAlignment = NSTextAlignment.Center
        label.text = "Hello Swift, This is label"
        label.textColor = UIColor.blackColor();
        
        return label
    }
    
    // UIView
    func createView() -> UIView {
        
        let orginY = CGRectGetMaxY(self.myLabel.frame) + 10
        let myView: UIView = UIView(frame: CGRectMake(10, orginY, self.view.frame.size.width-20, 30))
        myView.backgroundColor = UIColor.whiteColor()
        
        return myView
    }
    
    // UIButton
    func createButton() -> UIButton {
        
        let orginY = CGRectGetMaxY(self.myView.frame) + 10
        let button: UIButton = UIButton(frame: CGRectMake(10, orginY, self.view.frame.size.width-20, 50))
        
        button.backgroundColor = UIColor.greenColor()
        button.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        button.setTitle("Click me call OC func", forState: UIControlState.Normal)
        button.titleLabel?.font = UIFont.systemFontOfSize(18)
        button.addTarget(self, action: #selector(SwiftController.tappedButton(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        button.tag = 100
        
        return button
    }
    
    // UIImageView
    func createImageView() -> UIImageView {
        
        let orginY = CGRectGetMaxY(self.myButton.frame) + 10
        let imageView: UIImageView = UIImageView(frame: CGRectMake((self.view.frame.size.width-100)/2, orginY, 100, 100))
        let image: UIImage = UIImage(named: "header")!
        imageView.image = image
        
        return imageView
    }
    
    // Button target
    func tappedButton(sender:UIButton!) {
        self.myImageView.image = LXHelpClass.getEllipseImageWithImage(self.myImageView.image)
        print(sender.tag, terminator: "swift")
    }
}

