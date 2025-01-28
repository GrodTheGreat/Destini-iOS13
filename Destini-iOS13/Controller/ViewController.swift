//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI(storyState);
    }
    
    func updateUI(_ storyIndex: Int) {
        storyLabel.text = stories[storyIndex].title;
        choice1Button.setTitle(
            stories[storyIndex].choice1,
            for: .normal
        );
        choice2Button.setTitle(
            stories[storyIndex].choice2,
            for: .normal
        );
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice: String = sender.titleLabel!.text!;
        
        if userChoice == stories[0].choice1 {
            storyState = 1;
        } else if userChoice == stories[0].choice2 {
            storyState = 2;
        }
        
        updateUI(storyState);
    }
    
}

