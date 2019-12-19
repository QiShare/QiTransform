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
        
        let button = UIButton.init(type: UIButton.ButtonType.system)
        button.frame = CGRect.init(x: space, y: 50, width: size.width - space * 2, height: 50)
        button.addTarget(self, action:#selector(buttonClicked), for: UIControl.Event.touchUpInside)
        button.setTitleColor(UIColor.black, for: UIControl.State.normal)
        button.setTitle("AffineTransfrom", for: UIControl.State.normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17)
        self.view.addSubview(button)
        
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.masksToBounds = true
        button.layer.borderWidth = 1.0
        button.layer.cornerRadius = 5
    }

    @objc func buttonClicked() {
        
        let testTrandform :AffineTransfromController = .init();
        self.navigationController?.pushViewController(testTrandform, animated: true)
    }
    
    
}

