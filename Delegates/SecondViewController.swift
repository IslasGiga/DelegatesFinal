//
//  SecondViewController.swift
//  Delegates
//
//  Created by Islas Girão Garcia on 30/07/2018.
//  Copyright © 2018 Islas Girão Garcia. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var lblText: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//Third part
extension SecondViewController: FirstViewControllerDelegate{
    func didSendText(_ text: String) {
        self.lblText.text = text
    }
}
