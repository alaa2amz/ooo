//
//  pvc.swift
//  ooo
//
//  Created by A on 11/28/17.
//  Copyright © 2017 Arena. All rights reserved.
//

import UIKit

class pvc: UIPageViewController,UIPageViewControllerDataSource {
    var p = UIViewController()
    var g = UIViewController()
    var b = UIViewController()
    var o = UIViewController()
    var m = UIViewController()
    var vc : [UIViewController] = []
    var names = ["p","g","b","o","m"]
    var index : Int = 0
    var count : Int = 0
    func getVCs(ids: [String]) -> [UIViewController]
    {
        var vcArray = [UIViewController]()
        for id in ids {
      let sb = UIStoryboard(name: "Main", bundle: nil)
            let vc = sb.instantiateViewController(withIdentifier: id)
            vcArray.append(vc)
            
        }
        return vcArray
    }
    func next( count:inout Int ,index:inout Int)
    {
       print("index before")
         print(index)
       
        index += 1
        if index > count-1 { index = 0 }
       
        print("index after")
        print(index)
        //if index == count { index = 0
             //} else {  index += 1 }
    }
    
    func previous( count:inout Int,index:inout Int)
    {
       index -= 1
        if index < 0 { index = count-1 }
        
        //if index < 0 { index = count
        //} else {  index -= 1 }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        previous(count: &count, index: &index)
        return vc[index]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        next(count: &count, index: &index)
        return vc[index]
    }
    

    override func viewDidLoad() {
    
        super.viewDidLoad()
        vc = getVCs(ids:names)
          count = vc.count
        setViewControllers([vc.first!], direction: .forward, animated: true, completion: nil)
  dataSource = self
        
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
