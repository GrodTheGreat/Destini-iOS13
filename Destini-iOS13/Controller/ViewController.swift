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
    
    
    var storyBrain = StoryBrain();
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI(storyBrain.storyState);
    }
    
    func updateUI(_ storyIndex: Int) {
        storyLabel.text = storyBrain.stories[storyIndex].title;
        choice1Button.setTitle(
            storyBrain.stories[storyIndex].choice1,
            for: .normal
        );
        choice2Button.setTitle(
            storyBrain.stories[storyIndex].choice2,
            for: .normal
        );
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice: String = sender.titleLabel!.text!;
        
        storyBrain.nextStory(userChoice);
        updateUI(storyBrain.storyState);
    }
    
}

