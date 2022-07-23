//
//  File.swift
//  GridThing
//
//  Created by HARISH RAM BAGHAVATH stu on 23/7/22.
//

import Foundation
import SwiftUI

struct BouncyView: UIViewRepresentable {
    
    var emoji: [String]
    
    var onCollide: ((CollisionSurface) -> Void)
    
    func makeUIView(context: Context) -> EmojiBouncyView {
        return EmojiBouncyView(onCollide: onCollide)
    }
}
