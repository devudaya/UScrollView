//
//  GatewayVC.swift
//  UScrollView
//
//  Created by Udaya Niroshana on 2022-05-23.
//

import UIKit

public protocol GatewayDelegate{
    
    func onSuccess(str: String)
}

public class GatewayVC: UIViewController {
    
    public var gatewayDelegate: GatewayDelegate? = nil

    public override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedOnPrint(_ sender: Any) {
        
        gatewayDelegate?.onSuccess(str: "Yooooo")
    }
    
}
