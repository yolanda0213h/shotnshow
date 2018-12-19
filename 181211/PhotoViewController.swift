//
//  PhotoViewController.swift
//  181211
//
//  Created by Yolanda H. on 2018/12/18.
//  Copyright © 2018 Yolanda H. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var blankView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var subView: UIView!
    @IBOutlet weak var massageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        massageLabel.text = photoText
        var width: CGFloat = 375
        var height: CGFloat = 375
        if ratio == "1 : 1" {
            width = 275
            height = width
        }
        else if ratio == "3 : 4" {
            width = 275
            height = width / 3 * 4
        }
        else if ratio == "16 : 9" {
            width = 275
            height = width / 16 * 9
        }
        blankView.frame.size.height = height + 110
        subView.frame = CGRect(x: (blankView.frame.width-width)/2, y: 20, width: width, height: height)
        imageView.frame = CGRect(x: -(view.frame.width-width)/2, y: -(view.frame.width-height)/2, width: 375, height: 375)
        massageLabel.frame.origin.y = subView.frame.maxY + 5
        
        let blankViewHight = self.blankView.frame.size.height
        let massageY = massageLabel.frame.origin.y
        let subViewY = massageY - 5 - subView.frame.height
        
        self.blankView.frame.size.height = 0
        self.massageLabel.frame.origin.y = -85
        self.subView.frame.origin.y = -90 - subView.frame.height
        UIView.animate(withDuration: 2) {
            self.blankView.frame.size.height = blankViewHight
            self.massageLabel.frame.origin.y = massageY
            self.subView.frame.origin.y = subViewY
            
        }
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
