//
//  ViewController.swift
//  DarkModeDemo
//
//  Created by HanulYun-Comp on 2020/03/04.
//  Copyright © 2020 Yun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    fileprivate let demoButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "demoButton"), for: .normal)
        button.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        return button
    }()
    
    fileprivate let demoLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.colorSet(.text)
        label.text = "Demo"
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        label.textAlignment = .center
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 20)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.colorSet(.background)
        
        [demoButton, demoLabel].forEach({view.addSubview($0)})
        demoButton.center = view.center
        
        let width: CGFloat = UIScreen.main.bounds.width
        let height: CGFloat = UIScreen.main.bounds.height
        demoLabel.center = CGPoint(x: width / 2, y: height / 3)
    }
}

