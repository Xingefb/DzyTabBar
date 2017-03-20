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
        let nv1 = UINavigationController(rootViewController: vc1)
        
        let vc2 = story.instantiateViewController(withIdentifier: "SecoundViewController")
        let nv2 = UINavigationController(rootViewController: vc2)
        
        let vc3 = story.instantiateViewController(withIdentifier: "ThiredViewController")
        let nv3 = UINavigationController(rootViewController: vc3)
        
        self.viewControllers = [nv1,nv2,nv3]
        self.selectedIndex = 0

        configTabBar()
        
        // Do any additional setup after loading the view.
    }

    func configTabBar() {
    
        let title = ["Home","Life","Dream"]
        let selecteImages = ["me_normal","privatemessage_normal","project_normal"]
        let unselecteImages = ["me_selected","privatemessage_selected","project_selected"]

        var index = 0
        for item in (self.tabBar.items)! {
            
            let theItem = item as! RDVTabBarItem
            
//            theItem.backgroundColor = UIColor.white            
            theItem.titlePositionAdjustment = UIOffsetMake(0, 3);
            theItem.title = title[index]
            theItem.unselectedTitleAttributes = [NSForegroundColorAttributeName:UIColor.gray]
            theItem.selectedTitleAttributes = [NSForegroundColorAttributeName:UIColor.orange]
            
            let selecteImage = UIImage(named: selecteImages[index])
            let unselecteImage = UIImage(named: unselecteImages[index])
            theItem.setFinishedSelectedImage(unselecteImage, withFinishedUnselectedImage: selecteImage)
            
            index += 1
            
        }

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
