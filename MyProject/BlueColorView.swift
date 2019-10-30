//
//  BlueColorView.swift
//  MyProject
//
//  Created by Egor Syrtcov on 10/26/19.
//  Copyright © 2019 Egor Syrtcov. All rights reserved.
//

import UIKit

class BlueColorView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        backgroundColor = .blue
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
