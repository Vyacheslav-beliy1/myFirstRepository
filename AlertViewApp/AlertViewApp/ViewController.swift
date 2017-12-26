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
        
       print("secondbranch")
        
    }

    var tempProperty = UIAlertController(title: "MyTitle", message: "MyMessage", preferredStyle: .actionSheet)
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let friends = ["Leonardo","Will","Rfaelo","Mikelandgelo"]
    let enemies = ["enemy1","enemy2","enemy3"]
    
    // MARK: - Actions
    @IBAction func showAlert(_ sender: UIButton)
    {
        let alertViewController = UIAlertController(title: "MyTitle", message: "MyMessage", preferredStyle: .alert)
        
        let wrapper = { (array:[String]) -> (UIAlertAction) -> Void in
            //body of wrapper closure
            return { (action:UIAlertAction) -> Void in
                //body of handler closure
                print("\(String(describing: action.title))")
                print("\(array)")
            }
        }
        
        let okAction = UIAlertAction(title: "Show Friends", style: .default, handler: wrapper(friends))
        alertViewController.addAction(okAction)
        
        let cancelAction = UIAlertAction(title: "Show Enemies", style: .destructive, handler: wrapper(enemies))
        alertViewController.addAction(cancelAction)
        
        self.present(alertViewController, animated: true, completion: nil)
    }
    
    @IBAction func showActionSheet(_ sender: UIButton)
    {
        let alertViewController = UIAlertController(title: "MyTitle", message: "MyMessage", preferredStyle: .actionSheet)
        
        let handler1 = { [weak  self] (action:UIAlertAction) -> Void in
            self?.customPrint(string: action.title)
        }
        
        let okAction = UIAlertAction(title: "MY - OK", style: .default, handler: handler1)
        alertViewController.addAction(okAction)
        
        tempProperty.addAction(okAction)
        
        let handler2 = { [weak  self] (action:UIAlertAction) -> Void in
            print("!!!!!🚘")
        }
        
        let cancelAction = UIAlertAction(title: "MY - CANCEL", style: .destructive, handler: handler2)
        alertViewController.addAction(cancelAction)
        
        self.present(alertViewController, animated: true, completion: nil)
    }

    func customPrint(string:String?)
    {
        print("Custom print - \(String(describing: string))")
    }
}

