//
//  LeftViewController.swift
//  DzyTabBar
//
//  Created by Dzy on 02/03/2017.
//  Copyright © 2017 Dzy. All rights reserved.
//

import UIKit

class LeftViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func clickButton(_ sender: UIButton) {

        self.slideMenuController()?.closeLeft()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
