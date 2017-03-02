//
//  RootViewController.swift
//  DzyTabBar
//
//  Created by Dzy on 02/03/2017.
//  Copyright © 2017 Dzy. All rights reserved.
//

import UIKit

import RDVTabBarController

class RootViewController: RDVTabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let story = UIStoryboard.init(name: "Main", bundle: Bundle.main)
        
        let vc1 = story.instantiateViewController(withIdentifier: "FirstViewController")
        let nv1 = UINavigationController.init(rootViewController: vc1)
        
        let vc2 = story.instantiateViewController(withIdentifier: "SecoundViewController")
        let nv2 = UINavigationController.init(rootViewController: vc2)
        
        let vc3 = story.instantiateViewController(withIdentifier: "ThiredViewController")
        let nv3 = UINavigationController.init(rootViewController: vc3)
        
        self.viewControllers = [nv1,nv2,nv3]
        self.selectedIndex = 0
        // Do any additional setup after loading the view.
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
