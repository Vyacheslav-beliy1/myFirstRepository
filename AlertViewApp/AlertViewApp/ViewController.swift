//
//  ViewController.swift
//  AlertViewApp
//
//  Created by bws2007 on 02.07.17.
//  Copyright © 2017 bws2007. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - VCLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Actions
    @IBAction func showAlert(_ sender: UIButton)
    {
        let alertViewController = UIAlertController(title: "MyTitle", message: "MyMessage", preferredStyle: .alert)
        
        let handler = { (action:UIAlertAction) -> Void in
            print("\(String(describing: action.title))")
        }
        
        let okAction = UIAlertAction(title: "MY - OK", style: .default, handler: handler)
        alertViewController.addAction(okAction)
        
        let cancelAction = UIAlertAction(title: "MY - CANCEL", style: .cancel, handler: handler)
        alertViewController.addAction(cancelAction)
        
        self.present(alertViewController, animated: true, completion: nil)
    }
    
    @IBAction func showActionSheet(_ sender: UIButton)
    {
        let alertViewController = UIAlertController(title: "MyTitle", message: "MyMessage", preferredStyle: .actionSheet)
        
        let handler = { (action:UIAlertAction) -> Void in
            print("\(String(describing: action.title))")
        }
        
        let okAction = UIAlertAction(title: "MY - OK", style: .default, handler: handler)
        alertViewController.addAction(okAction)
        
        let cancelAction = UIAlertAction(title: "MY - CANCEL", style: .cancel, handler: handler)
        alertViewController.addAction(cancelAction)
        
        self.present(alertViewController, animated: true, completion: nil)
    }

}

