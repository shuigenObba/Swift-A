//
//  ViewController.swift
//  Swift-A
//
//  Created by huangshuigen on 01/03/2018.
//  Copyright (c) 2018 huangshuigen. All rights reserved.
//

import UIKit
import Swift_A
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(BFileManager.createFileName(withFileName: "loadIamge"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

