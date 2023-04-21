//
//  FollowerListVC.swift
//  githubFollowersAPP
//
//  Created by deniz on 4/22/23.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var username:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
        navigationController?.navigationBar.prefersLargeTitles = true
    }
   
}
