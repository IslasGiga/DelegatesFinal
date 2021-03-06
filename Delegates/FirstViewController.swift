//
//  FirstViewController.swift
//  Delegates
//
//  Created by Islas Girão Garcia on 30/07/2018.
//  Copyright © 2018 Islas Girão Garcia. All rights reserved.
//

import UIKit

//First step - Create a delegate protocol
protocol FirstViewControllerDelegate: AnyObject{
    func didSendText(_ text: String)
}

class FirstViewController: UIViewController {
    @IBOutlet weak var btnGo: UIButton!
    
    @IBOutlet weak var lblText: UITextField!
    
    //Second step
    weak var delegate: FirstViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnGo.layer.cornerRadius = btnGo.frame.size.height/2 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goToTheSecondViewController(_ sender: UIButton) {
        //Fourth step
        performSegue(withIdentifier: "mySegue", sender: self)
        if delegate != nil{
            delegate?.didSendText(lblText.text!)
        }
    }
    
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Fifth part
        let vc = segue.destination as! SecondViewController
        delegate = vc
    }


}
