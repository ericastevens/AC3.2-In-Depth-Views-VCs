//
//  LazyView.swift
//  AC3.2-ProgrammaticEveryday
//
//  Created by Erica Y Stevens on 12/20/16.
//  Copyright © 2016 Erica Stevens. All rights reserved.
//

import UIKit

class LazyView: UIView {

    //Two things you always have to include when creating views programmatically:
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        print("\n\n\n*********** Init'd with Frame **********")
        
        self.backgroundColor = self.randomColor()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func randomColor() -> UIColor {
        // by: Eric
        
        let r = CGFloat(arc4random_uniform(254))
        let g = CGFloat(arc4random_uniform(254))
        let b = CGFloat(arc4random_uniform(254))
        
        return UIColor(red: r/255, green: g/255, blue: b/255, alpha: 1.0)
    }
    
}
