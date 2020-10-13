//
//  PageControlViewController.swift
//  UIElements
//
//  Created by Jose Martins on 13/10/20.
//

import UIKit

class PageControlViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    
    let images: [String] = ["first", "second", "third"]
    var frame = CGRect(x: 0, y: 0, width: 0, height: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pageControl.numberOfPages = images.count
        
        for index in 0..<images.count {
            frame.origin.x = (scrollView.frame.size.width) * CGFloat(index)
            
            frame.size = (scrollView.frame.size)
            
            let imageView = UIImageView(frame: frame)
            imageView.image = UIImage(named: images[index])
            
            imageView.contentMode = .scaleAspectFit
            
            self.scrollView.addSubview(imageView)
        }
        
        self.scrollView.contentSize = CGSize(
            width: ((scrollView.frame.size.width ) * CGFloat(images.count)),
            height: (scrollView.frame.size.height )
        )
        
        self.scrollView.delegate = self
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let currentPage = scrollView.contentOffset.x / scrollView.frame.size.width
        
        pageControl.currentPage = Int(currentPage)
        
    }
    
}
