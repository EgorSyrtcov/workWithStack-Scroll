//
//  GreenColorView.swift
//  MyProject
//
//  Created by Egor Syrtcov on 10/26/19.
//  Copyright © 2019 Egor Syrtcov. All rights reserved.
//

import UIKit

class GreenColorView: UIView {
    
    let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        button.setTitle("Back RED VIEW", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        //button.titleLabel?.font = UIFont(name:"Avenir Next", size: 23)
        //button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 23)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return button
    }()
    
   

    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        backgroundColor = .green
        
        assemble()
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func buttonAction(sender: UIButton!) {
        
    }
    
    fileprivate func assemble() {
        addSubview(button)
    }
    
    fileprivate func setupLayout() {
        button.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
        }
    }
}
