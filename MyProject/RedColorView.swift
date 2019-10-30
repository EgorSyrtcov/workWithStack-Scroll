//
//  ColorView.swift
//  MyProject
//
//  Created by Egor Syrtcov on 10/26/19.
//  Copyright © 2019 Egor Syrtcov. All rights reserved.
//

import UIKit

class RedColorView: UIView {
    
    private let nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.textAlignment = .center
        nameLabel.text = "Hello"
        nameLabel.font = UIFont.systemFont(ofSize: 25)
        return nameLabel
    }()

    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        backgroundColor = .red
        
        assemble()
        setupLayout()
    }
       
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func assemble() {
        addSubview(nameLabel)
    }
    
    fileprivate func setupLayout() {
        nameLabel.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
        }
    }
}
