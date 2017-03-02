//
//  FirstViewController.swift
//  DzyTabBar
//
//  Created by Dzy on 02/03/2017.
//  Copyright © 2017 Dzy. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController,LeftViewControllerDelegate {

    func goToViewController(name: String) {
        print(name)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let story = UIStoryboard.init(name: "Main", bundle: Bundle.main)
        let vc = story.instantiateViewController(withIdentifier: "LeftViewController") as! LeftViewController
        vc.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func clickButton(_ sender: UIButton) {
        
        self.slideMenuController()?.openLeft()
        
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
