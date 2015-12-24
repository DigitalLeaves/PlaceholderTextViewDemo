//
//  ViewController.swift
//  PlaceholderTextViewDemo
//
//  Created by Ignacio Nieto Carvajal on 26/2/15.
//  Copyright (c) 2015 Ignacio Nieto Carvajal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // outlets && buttons
    @IBOutlet weak var textView: PlaceholderTextView!
    @IBOutlet weak var clearButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clearTextView(sender: AnyObject) {
        textView.text = ""
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.textView.resignFirstResponder()
        self.view.endEditing(true)
    }
}

