//
//  EmojiViewController.swift
//  EmojiCardStack
//
//  Created by Erica Y Stevens on 12/20/16.
//  Copyright © 2016 Erica Stevens. All rights reserved.
//

import UIKit

class EmojiViewController: UIViewController {
    
    var drawCardButton: UIButton = UIButton(type: .system)
    var showStackButton: UIButton = UIButton(type: .system)
    var removeRandomButton: UIButton = UIButton(type: .system)
    var removeAllButton: UIButton = UIButton(type: .system)
    
    //func setupButtons() {
        //LEFT BOTTOM BUTTON
        func setupRemoveRandomButton() {
            
            self.view.addSubview(removeRandomButton)
            self.removeRandomButton.translatesAutoresizingMaskIntoConstraints = false
            self.removeRandomButton.setTitle("Remove Random", for: .normal)
            self.removeRandomButton.backgroundColor = .white
            
            let _ = [
                removeRandomButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                removeRandomButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
                ].map { $0.isActive = true }
            
            self.removeRandomButton.addTarget(self, action: #selector(didPressRemoveRandomButton(sender:)), for: .touchUpInside) //same as IBAction for UIButton
        }

        //LEFT TOP BUTTON
        func setupDrawCardButton() {
            
            self.view.addSubview(drawCardButton)
            self.drawCardButton.translatesAutoresizingMaskIntoConstraints = false
            self.drawCardButton.setTitle("Draw Card", for: .normal)
            self.drawCardButton.backgroundColor = .white
            
            let _ = [
                drawCardButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                drawCardButton.bottomAnchor.constraint(equalTo: self.removeRandomButton.topAnchor)
                ].map { $0.isActive = true }
            
            self.drawCardButton.addTarget(self, action: #selector(didPressDrawCardButton(sender:)), for: .touchUpInside) //same as IBAction for UIButton
        }
        
        //RIGHT BOTTOM BUTTON
        func setupRemoveAllButton() {
            
            self.view.addSubview(removeAllButton)
            self.removeAllButton.translatesAutoresizingMaskIntoConstraints = false
            self.removeAllButton.setTitle("Remove All", for: .normal)
            self.removeAllButton.backgroundColor = .white
            
            let _ = [
                removeAllButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
                removeAllButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
                ].map { $0.isActive = true }
            
            self.removeAllButton.addTarget(self, action: #selector(didPressRemoveAllButton(sender:)), for: .touchUpInside) //same as IBAction for UIButton
        }
        
        //RIGHT TOP BUTTON
        func setupShowStackButton() {
            
            self.view.addSubview(showStackButton)
            self.showStackButton.translatesAutoresizingMaskIntoConstraints = false
            self.showStackButton.setTitle("Show Stack", for: .normal)
            self.showStackButton.backgroundColor = .white
            
            let _ = [
                showStackButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
                showStackButton.bottomAnchor.constraint(equalTo: self.removeAllButton.topAnchor)
                ].map { $0.isActive = true }
            
            self.showStackButton.addTarget(self, action: #selector(didPressShowStackButton(sender:)), for: .touchUpInside) //same as IBAction for UIButton
        }
        
//        setupShowStackButton()
//        setupDrawCardButton()
//        setupRemoveAllButton()
//        setupRemoveRandomButton()
//    }
    
    func didPressDrawCardButton(sender: UIButton) {
        
    }
    
  
    
    func didPressRemoveRandomButton(sender: UIButton) {
        
    }
    
   
    
    func didPressRemoveAllButton(sender: UIButton) {
        
    }
    
   
    
    func didPressShowStackButton(sender: UIButton) {
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        

        setupRemoveRandomButton()
        setupDrawCardButton()
        setupRemoveAllButton()
        setupShowStackButton()
        
        self.navigationController?.title = "Emoji Stack"
        
        self.view.backgroundColor = .magenta
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
