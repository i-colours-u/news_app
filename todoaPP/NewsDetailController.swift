//
//  NewsDetailController.swift
//  todoaPP
//
//  Created by 송지훈 on 2020/01/19.
//  Copyright © 2020 송지훈. All rights reserved.
//

import UIKit

class NewsDetailController : UIViewController {
    
    @IBOutlet weak var ImageMain: UIImageView!
    @IBOutlet weak var labelMain: UILabel!
    
    //1. image url
    //2. desc
    
    var imageUrl: String?
    var desc: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ok!?
        if let img = imageUrl {
            //이미지 가져와서 뿌린다!
            //Data
            if let data = try? Data(contentsOf: URL(string: img)!) {
                //Main Thread
                DispatchQueue.main.async {
                    self.ImageMain.image = UIImage(data: data)
                }
            }
        }
        
        if let d = desc {
            //본문을 보여준다!
            self.labelMain.text = d
        }
    }
    
}
