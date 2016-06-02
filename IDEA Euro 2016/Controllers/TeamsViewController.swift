//
//  TeamsViewController.swift
//  IDEA Euro 2016
//
//  Created by Cuu Long Hoang on 5/30/16.
//  Copyright © 2016 Long Hoang. All rights reserved.
//

import UIKit

class TeamsViewController: UIViewController {
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = false
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}