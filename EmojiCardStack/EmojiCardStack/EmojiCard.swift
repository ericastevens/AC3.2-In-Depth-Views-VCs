//
//  EmojiCard.swift
//  EmojiCardStack
//
//  Created by Erica Y Stevens on 12/20/16.
//  Copyright © 2016 Erica Stevens. All rights reserved.
//

import UIKit

class EmojiCard: UIView, PlayingCard {
    
    var suit: String
    var value: Int

    let suitLabel: UILabel = {
        let lb = UILabel()
        lb.text = "test label"
       return lb
    }()
    
    let imageView: UIImageView = {
        let image = UIImage(named: "")
        let iv = UIImageView(image: image)
        return iv
    }()
    
    init(frame: CGRect, suit: String, value: Int) {
        self.suit = suit
        self.value = value
        super.init(frame: frame)
        self.addSubview(suitLabel)
        self.addSubview(imageView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
