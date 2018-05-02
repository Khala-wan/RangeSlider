//
//  ViewController.swift
//  RangeSlider
//
//  Created by William Archimede on 08/09/2014.
//  Copyright (c) 2014 HoodBrains. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let rangeSlider1 = RangeSlider(frame: CGRect.zero)
    let rangeSlider2 = RangeSlider(frame: CGRect.zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rangeSlider2.trackHighlightTintColor = UIColor.red
//        rangeSlider2.curvaceousness = 5
        
//        view.addSubview(rangeSlider1)
        view.addSubview(rangeSlider2)
        
        rangeSlider2.addTarget(self, action: #selector(ViewController.rangeSliderValueChanged(_:)), for: .valueChanged)
        rangeSlider2.maximumValue = 8000
        rangeSlider2.minimumValue = 0
        rangeSlider2.minSpcaeValue = 100
        rangeSlider2.upperValue = 8000
    }
    
    override func viewDidLayoutSubviews() {
        let margin: CGFloat = 20.0
        let width = view.bounds.width - 2.0 * margin
        rangeSlider1.frame = CGRect(x: margin, y: margin + topLayoutGuide.length + 100,
            width: width, height: 31.0)
        rangeSlider2.frame = CGRect(x: margin + 20, y: 5 * margin + topLayoutGuide.length + 100,
            width: width - 40, height: 21)
        rangeSlider2.lineWidth = 2
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func rangeSliderValueChanged(_ rangeSlider: RangeSlider) {
        print("Range slider value changed: (\(rangeSlider.lowerValue) , \(rangeSlider.upperValue))")
    }
}

