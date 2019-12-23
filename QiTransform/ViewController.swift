//
//  ViewController.swift
//  QiTransform
//
//  Created by wangdacheng on 2019/11/26.
//  Copyright © 2019 qishare. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var button: UIButton?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "QiTransform"
        self.view.backgroundColor = .white
        self.edgesForExtendedLayout = [UIRectEdge.left, UIRectEdge.right]
        
        self.initViews()
    }

    func initViews() {
        
        let space: CGFloat = 15.0
        let size: CGSize = self.view.frame.size
        
        let titleArr:NSArray = ["AffineTransfrom", "BezierPath"]
        
        var offset:CGFloat = 50.0
        
        for i in 0 ..< titleArr.count {
            let button = UIButton.init(type: UIButton.ButtonType.system)
            button.frame = CGRect.init(x: space, y: offset, width: size.width - space * 2.0, height: 50.0)
            button.addTarget(self, action:#selector(buttonClicked(button:)), for: UIControl.Event.touchUpInside)
            button.setTitleColor(UIColor.black, for: UIControl.State.normal)
            button.setTitle(titleArr.object(at: i) as? String, for: UIControl.State.normal)
            button.titleLabel?.font = UIFont.systemFont(ofSize: 17)
            self.view.addSubview(button)
            
            button.tag = i
            button.layer.borderColor = UIColor.gray.cgColor
            button.layer.masksToBounds = true
            button.layer.borderWidth = 1.0
            button.layer.cornerRadius = 5
            
            offset = offset + CGFloat(50) + space
        }
    }

    @objc func buttonClicked(button: UIButton) {
        
        if button.tag == 0 {
            let testTrandform :AffineTransfromController = .init();
            self.navigationController?.pushViewController(testTrandform, animated: true)
        }
        else if button.tag == 1 {
            let bezierController :BezierPathController = .init();
            self.navigationController?.pushViewController(bezierController, animated: true)
        }
        
    }
    
    
}

