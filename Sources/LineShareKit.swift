//
//  LineShareKit.swift
//  LineShareKit
//
//  Created by JaminZhou on 2017/9/3.
//  Copyright © 2017年 JaminZhou. All rights reserved.
//

import UIKit

class LineShareKit {
    class func share(text: String) -> Bool {
        guard let text = text.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
        else {return false}
        
        let url = URL(string: "line://msg/text/" + text)!
        return UIApplication.shared.openURL(url)
    }
    
    class func share(image: UIImage) -> Bool {
        guard let imageData = UIImageJPEGRepresentation(image, 1.0)
        else {return false}
        
        let pasteboard = UIPasteboard.general
        pasteboard.setData(imageData, forPasteboardType: "public.jpeg")
        let url = URL(string: "line://msg/image/" + pasteboard.name.rawValue)!
        return UIApplication.shared.openURL(url)
    }
}
