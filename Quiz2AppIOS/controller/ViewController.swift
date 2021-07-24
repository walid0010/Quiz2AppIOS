//
//  ViewController.swift
//  Quiz2AppIOS
//
//  Created by chekir walid on 24/7/2021.
//

import UIKit

class ViewController: UIViewController {
    var storyBrain = StoryBrain()
    @IBOutlet weak var labelStory: UILabel!
    @IBOutlet weak var choiceButton1: UIButton!
    @IBOutlet weak var choiceButton2: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    @IBAction func choiceButtonPressed(_ sender: UIButton) {
        storyBrain.nextStory(sender.currentTitle!)
        updateUI()
    }
    
    func updateUI(){
        choiceButton1.setTitle(storyBrain.getChoice1(), for: .normal)
        choiceButton2.setTitle(storyBrain.getChoice2(), for: .normal)
        labelStory.text = storyBrain.getTitle()
    }

}

