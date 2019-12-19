//
//  TestTransformController.swift
//  QiTransform
//
//  Created by wangdacheng on 2019/11/26.
//  Copyright © 2019 qishare. All rights reserved.
//

import UIKit

class AffineTransfromController: UIViewController {

    var affineView: AffineTransfromView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "AffineTransfrom"
        self.view.backgroundColor = .white
        self.edgesForExtendedLayout = [UIRectEdge.left, UIRectEdge.right]
        
        self.affineView = AffineTransfromView.init(frame: self.view.bounds)
        self.affineView?.backgroundColor = UIColor.yellow
        self.affineView?.hostCon = self
        self.view.addSubview(self.affineView!);
    }
    
}
