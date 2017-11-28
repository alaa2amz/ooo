//
//  pvc.swift
//  ooo
//
//  Created by A on 11/28/17.
//  Copyright © 2017 Arena. All rights reserved.
//

import UIKit

class pvc: UIPageViewController,UIPageViewControllerDataSource {
    let p = UIViewController()
    let g = UIViewController()
    let b = UIViewController()
    let o = UIViewController()
    let m = UIViewController()
    let vc : [ViewController] = []
    func getVCs(ids: [String]) -> [UIViewController]
    {
        for id in ids {
      
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        <#code#>
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        <#code#>
    }
    

    override func viewDidLoad() {
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
