//
//  MainViewController.swift
//  MyProject
//
//  Created by Egor Syrtcov on 10/17/19.
//  Copyright © 2019 Egor Syrtcov. All rights reserved.
//

import UIKit
import SnapKit

final class MainViewController: UIViewController {
    
    let redColorView = RedColorView()
    let greenColorView = GreenColorView()
    let blueColorView = BlueColorView()
   
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.contentInsetAdjustmentBehavior = .never
        //scrollView.backgroundColor = .red
        scrollView.isPagingEnabled = true
        //scrollView.showsHorizontalScrollIndicator = false
        return scrollView
    }()

    
   private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis  = .horizontal
        stackView.distribution = .fillEqually
        //stackView.spacing = 8
        return stackView
    }()


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBar()
        assemble()
        setupLayout()
        addStackView()
    }
    
    fileprivate func addStackView() {
        let elementsView = [redColorView, greenColorView, blueColorView]

        elementsView.forEach { stackView.addArrangedSubview($0)
            $0.snp.makeConstraints { make in
                make.width.equalTo(scrollView.snp.width)
                make.height.equalTo(scrollView.snp.height)
            }
        }
    }
   
    
    
    
    fileprivate func setupNavigationBar() {
        title = "My Project"
    }
    
    fileprivate func assemble() {
       view.addSubview(scrollView)
       scrollView.addSubview(stackView)
    }
    fileprivate func setupLayout() {
        scrollView.snp.makeConstraints { (make) in
            make.left.right.equalToSuperview()
            make.topMargin.equalToSuperview().offset(50)
            make.height.equalTo(300)
        }
        stackView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
}



