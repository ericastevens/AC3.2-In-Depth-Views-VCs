//
//  ViewController.swift
//  AC3.2-ProgrammaticEveryday
//
//  Created by Erica Y Stevens on 12/20/16.
//  Copyright © 2016 Erica Stevens. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var segueButton: UIButton = UIButton(type: UIButtonType.system) //same as IBOutlet (for button)
    var randomLazyView: LazyView = LazyView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.blue
        
        print("Button frame: \(segueButton.frame)") //segue button will not receive size dimensions until viewDidLayoutSubviews is called (not declared here)
        //If you check the frame dimensions here, all inputs will be 0
        //Another reason why frames is worse than AutoLayout!
        
       
        self.view.addSubview(segueButton)
        self.segueButton.translatesAutoresizingMaskIntoConstraints = false
        //The UIButton's intrinsic size cannot be determined until the title has been set
        self.segueButton.setTitle("PRESS ME", for: .normal)
         //Since UIButtons have intrinsic sizes, in order to programmatically center one, all you need are two constraints(center.x and center.y)
        let _ = [
            segueButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            segueButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
            ].map { $0.isActive = true }
        
        self.segueButton.addTarget(self, action: #selector(didPressSegueButton(sender:)), for: .touchUpInside) //same as IBAction for UIButton
        
        //self.navigationItem.backBarButtonItem?.action
        
    }
    
    func didPressSegueButton(sender: UIButton) {
        print("Did press button")
        //PROGRAMMATIC SEGUE
        
        //1. Create pur destination ViewController
        let randomViewController = ViewController() //ViewController is the name of this class. If the class was named HufflePuffViewController, then it would be reflected accordingly
        randomViewController.view.backgroundColor = randomColor()
        
        //2. Move to the destination ViewController by pushing the new controller on top of the nav controller stack (don't use present in this case)
        self.navigationController?.pushViewController(randomViewController, animated: true)
        
    }
    func randomColor() -> UIColor {
        // by: Eric
        
        let r = CGFloat(arc4random_uniform(254))
        let g = CGFloat(arc4random_uniform(254))
        let b = CGFloat(arc4random_uniform(254))
        
        return UIColor(red: r/255, green: g/255, blue: b/255, alpha: 1.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    //Order in which they are called in VC's life cycle:
    //1. viewDidLoad
    //2. viewWillAppear
    //3. viewDidAppear
    //4. viewWillDisappear
    //5. viewDidDisappear
}

