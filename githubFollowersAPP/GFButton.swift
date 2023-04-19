//
//  GFButton.swift
//  githubFollowersAPP
//
//  Created by deniz on 4/19/23.
//

import UIKit

class GFButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(backgroundColor:UIColor,title:String) {
        self.init(frame: .zero)
        set(color: backgroundColor, title: title)

    }
    
    private func configure(){
        configuration = .tinted()
        configuration?.cornerStyle = .medium
        translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    final func set(color:UIColor,title:String){
        configuration?.baseBackgroundColor = color
        configuration?.baseForegroundColor = color
        configuration?.title = title
    }
}
