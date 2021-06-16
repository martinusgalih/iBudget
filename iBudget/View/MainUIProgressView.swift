//
//  MainUIProgressView.swift
//  iBudget
//
//  Created by Martinus Galih Widananto on 16/06/21.
//

import UIKit

class MainUIProgressView: UIProgressView {

        var height:CGFloat = 1.0

        override func sizeThatFits(_ size: CGSize) -> CGSize {
            let size:CGSize = CGSize.init(width: self.frame.size.width, height: height)

            return size
        }

}
