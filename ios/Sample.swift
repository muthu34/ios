//
//  Sample.swift
//  ios
//
//  Created by BLT0001-IMAC on 23/10/15.
//  Copyright © 2015 BLT0001-IMAC. All rights reserved.
//

import UIKit


class Sample: UIViewController {

    var person = ("John", "Smith")

    override func viewDidLoad() {
        
        person.0 = "first"
        person.1 = "second"
        
        
        
        Confic.sharedInstance.changeViewController()
    
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
