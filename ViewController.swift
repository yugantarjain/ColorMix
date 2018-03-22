//
//  ViewController.swift
//  colormix
//
//  Created by sanjeev jain on 03/02/18.
//  Copyright © 2018 sanjeev jain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.borderColor = UIColor.black.cgColor
        colorView.layer.borderWidth = 1
        //colorView.layer.cornerRadius=10
        // Do any additional setup after loading the view, typically from a nib.
        updateSliders()
        updateColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var colorView: UIView!
    
    @IBAction func switch1(_ sender: UISwitch)
    {
        updateSliders()
        updateColor()
    }
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    func updateColor()
    {
        var red: CGFloat=0;
        var green: CGFloat=0;
        var blue: CGFloat=0;
        if(redSwitch.isOn)
        {
            red = CGFloat(redSlider.value)
        }
        if(greenSwitch.isOn)
        {
            green = CGFloat(greenSlider.value)
        }
        if(blueSwitch.isOn)
        {
            blue = CGFloat(blueSlider.value)
        }
        let color = UIColor(red:red, green:green, blue:blue, alpha:1);
        colorView.backgroundColor = color;
        updateSliders()
    }
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBAction func sliderChanged(_ sender: UISlider)
    {
        updateColor()
    }
    
    @IBAction func reset(_ sender: UIButton)
    {
        redSwitch.isOn=false;
        greenSwitch.isOn=false;
        blueSwitch.isOn=false;
        redSlider.value=1;
        greenSlider.value=1;
        blueSlider.value=1;
        updateColor()
        updateSliders()
    }
    func updateSliders()
    {
        redSlider.isEnabled=redSwitch.isOn
        greenSlider.isEnabled=greenSwitch.isOn
        blueSlider.isEnabled=blueSwitch.isOn
    }
}

