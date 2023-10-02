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
    
    let story0: String = "You see a fork in the road."
    let choice1: String = "Take a left."
    let choice2: String = "Take a right."
    var storyBrain: StoryBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyLabel.text = story0
        choice1Button.setTitle(choice1, for: UIControl.State.normal)
        choice2Button.setTitle(choice2, for: UIControl.State.normal)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let seletedChoice: String = sender.titleLabel!.text!
        let story: Story = storyBrain.nextStory(seletedChoice)

        updateUI(story: story)
    }
    
    func updateUI(story: Story) {
        storyLabel.text = story.title
        choice1Button.setTitle(story.choice1, for: UIControl.State.normal)
        choice2Button.setTitle(story.choice2, for: UIControl.State.normal)
    }
}
