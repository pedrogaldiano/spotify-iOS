//
//  Extensions.swift
//  Spotify
//
//  Created by PEDRO GALDIANO DE CASTRO on 30/11/21.
//

import Foundation
import UIKit

extension UIView {
    
    var width: CGFloat {
        return frame.size.width
    }
    
    var height: CGFloat {
        return frame.size.height
    }
    
    var left: CGFloat {
        return frame.origin.x
    }
    
    var right: CGFloat {
        return width + left
    }
    
    var top: CGFloat {
        return frame.origin.y
    }
    
    var botton: CGFloat {
        return height + top
    }
}
