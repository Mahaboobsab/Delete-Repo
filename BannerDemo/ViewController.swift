//
//  ViewController.swift
//  BannerDemo
//
//  Created by Meheboob MacBook on 1/4/20.
//  Copyright © 2020 Impeedcraft. All rights reserved.
//

import UIKit
import FSPagerView
class ViewController: UIViewController,FSPagerViewDelegate,FSPagerViewDataSource {
    
    func numberOfItems(in pagerView: FSPagerView) -> Int {
        return imageItems.count
    }
    
    func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let cell = pagerView.dequeueReusableCell(withReuseIdentifier: "cell", at: index)
        cell.imageView?.image = UIImage.init(named: self.imageItems[index])
            //cell.textLabel?.text = ...
          return cell
    }
    
    var imageItems = ["Banner1.jpg","Banner2.jpg","Banner3.jpg","Banner4.jpg"]
    
    @IBOutlet weak var pagerView: FSPagerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
  
        pagerView.automaticSlidingInterval = 3.0
        pagerView.dataSource = self
        pagerView.delegate = self
        pagerView.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "cell")
        
        
    }


}

