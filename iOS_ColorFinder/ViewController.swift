//
//  ViewController.swift
//  iOS_ColorFinder
//
//  Created by 王麒翔 on 2023/7/17.
//

import UIKit

class ViewController: UIViewController {

    // @IBOutlet
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    // @IBAction
    @IBAction func redSliderChanged(_ sender: UISlider) {
        redValue = Int(sender.value)
        redLabel.text = "R:\(redValue)"
        changeBackgroundColor()
    }
    @IBAction func greenSliderChanged(_ sender: UISlider) {
        greenValue = Int(sender.value)
        greenLabel.text = "G:\(greenValue)"
        changeBackgroundColor()
    }
    @IBAction func blueSliderChanged(_ sender: UISlider) {
        blueValue = Int(sender.value)
        blueLabel.text = "B:\(blueValue)"
        changeBackgroundColor()
    }
    
    // Property
    var redValue = 255
    var greenValue = 255
    var blueValue = 255
    
    // Method
    func changeBackgroundColor () {
        view.backgroundColor = UIColor(red: CGFloat(redValue)/255,
                                       green: CGFloat(greenValue)/255,
                                       blue: CGFloat(blueValue)/255,
                                       alpha: CGFloat(1))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

