//
//  BezierPathController.swift
//  QiTransform
//
//  Created by wangdacheng on 2019/12/20.
//  Copyright © 2019 qishare. All rights reserved.
//

import UIKit

class BezierPathController: UIViewController {

    var bezierView:BezierPathView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "BezierPathController"
        self.view.backgroundColor = .white
        self.edgesForExtendedLayout = [UIRectEdge.left, UIRectEdge.right]
        
        self.bezierView = BezierPathView.init(frame: self.view.bounds)
        self.bezierView?.backgroundColor = UIColor.lightGray
        self.view.addSubview(self.bezierView!);
    }
    
}
