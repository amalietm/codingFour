//
//  galleryViewController.swift
//  codingFourAppDevelopment
//
//  Created by Amalie Morch on 12/06/2022.
//

import UIKit

class galleryViewController: UIViewController, iCarouselDelegate, iCarouselDataSource
{
    

    @IBOutlet var carouselView: iCarousel!
    
    var imageLabels = ["Frida Kahlo", "Max Ernst", "Marc Chagall", "Paul Gaugin", "Van Gogh"]
    var currentIndex = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        carouselView.type = .rotary
    }
    
    func numberOfItems(in carousel: iCarousel) -> Int {
        return 5
    }
    
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        let view = UIView(frame: CGRect(x:0, y:0, width:340, height:450))
        let imageview = UIImageView(frame: view.bounds)
        view.addSubview(imageview)
        imageview.contentMode = .scaleToFill
        imageview.image = UIImage(named: "carouselPic\(index+1)")
        
        let button = UIButton(frame: CGRect(x:10, y:470, width:340, height:80))
        currentIndex+=1
        if (currentIndex == imageLabels.count) {
            currentIndex = 0
        }
        button.setTitle("\(imageLabels[currentIndex])", for: .normal)

        button.setTitleColor(.darkGray, for: .normal)
        button.contentHorizontalAlignment = .left
        button.titleLabel?.font = UIFont(name: "Bodoni 72 Book", size: 42)
        view.addSubview(button)
        return view
    }

    func carousel(_ carousel: iCarousel, valueFor option: iCarouselOption, withDefault value: CGFloat) -> CGFloat {
        if option == iCarouselOption.spacing {
            return value * 1.2
        }
        
        return value
    }


}
