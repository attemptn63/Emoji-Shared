//
//  File.swift
//  GridThing
//
//  Created by HARISH RAM BAGHAVATH stu on 23/7/22.
//

import Foundation
import SwiftUI

struct BouncyView: UIViewRepresentable {
    
    var emojis: [String]
    
    var onCollide: ((CollisionSurface) -> Void)
    
    func makeUIView(context: Context) -> EmojiBouncyView {
        return EmojiBouncyView(onCollide: onCollide)
    }
    func updateUIView(_ uiView: EmojiBouncyView, context: Context) {
        if let last = emojis.last {
            uiView.insert(emoji: last)
        }
    }
}
