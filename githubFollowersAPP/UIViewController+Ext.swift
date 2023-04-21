//
//  UIViewController+Ext.swift
//  githubFollowersAPP
//
//  Created by deniz on 4/22/23.
//

import UIKit


extension UIViewController {
    func presentGFAlertOnMainThread(title:String,body:String,buttonTitle:String){
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(alertTitle: title, alertBody: body, alertButtonTitle:buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}
