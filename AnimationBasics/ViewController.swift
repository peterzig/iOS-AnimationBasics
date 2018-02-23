//
//  ViewController.swift
//  AnimationBasics
//
//  Created by Peter Zaporowski on 23.02.2018.
//  Copyright © 2018 Peter Zaporowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bgImg: UIImageView!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var welcomeLbl: UILabel!
    @IBOutlet weak var pushBtn: UIButton!
    @IBOutlet weak var mainViewConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        mainViewConstraint.constant = -195
        
        for i in [bgImg, mainView, welcomeLbl, pushBtn] {
            i?.alpha = 0
        }
        
        UIView.animate(withDuration: 1, animations: {
            self.bgImg.alpha = 1
        }) { (true) in
            self.animateView()
        }
    }
    
    func animateView() {
        UIView.animate(withDuration: 2, animations: {
            self.mainView.alpha = 1
            self.mainViewConstraint.constant = 0
            self.view.layoutIfNeeded()
            
        }) { (true) in
            self.animateLbl()
        }
    }
    
    func animateLbl() {
        UIView.animate(withDuration: 1, animations: {
            self.welcomeLbl.alpha = 1
        }) { (true) in
            self.animateBtn()
        }
    }
    func animateBtn() {
        UIView.animate(withDuration: 1) {
            self.pushBtn.alpha = 1
        }
    }
}
