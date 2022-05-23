//
//  ViewController.swift
//  UScrollView
//
//  Created by devudaya on 05/10/2022.
//  Copyright (c) 2022 devudaya. All rights reserved.
//

import UIKit
import UScrollView
import TinyConstraints


class ViewController: UIViewController {
    
    
    let scrollView = DScrollView()
    let scrollViewContainer = DScrollViewContainer(axis: .vertical, spacing: 10)
    let scrollViewElement0 = DScrollViewElement(height: 1200, backgroundColor: .purple)
    let scrollViewElement1 = DScrollViewElement(height: 500, backgroundColor: .purple)//.withBackground(image: #imageLiteral(resourceName: "icon.png"), contentMode: .scaleAspectFit)
    
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        label.text = "I am a label"
        setupLabelTap()
        
        view.addScrollView(scrollView,
                           withSafeArea: .none,
                           hasStatusBarCover: true,
                           statusBarBackgroundColor: .white,
                           container: scrollViewContainer,
                           elements: [scrollViewElement0, scrollViewElement1])
        
        scrollViewElement1.addSubview(label)
        label.centerInSuperview()
        
    }
    
    @objc func labelTapped(_ sender: UITapGestureRecognizer) {
       
        let frameworkBundle = Bundle(identifier:"org.cocoapods.UScrollView")
        let storyboard = UIStoryboard(name: "Gateway", bundle: frameworkBundle)
        let vc = storyboard.instantiateViewController(withIdentifier: "GatewayVC")
        self.present(vc, animated: true)
    }
    
    func setupLabelTap() {
        
        let labelTap = UITapGestureRecognizer(target: self, action: #selector(self.labelTapped(_:)))
        self.label.isUserInteractionEnabled = true
        self.label.addGestureRecognizer(labelTap)
        
    }
}

