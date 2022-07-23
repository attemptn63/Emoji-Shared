//
//  File.swift
//  GridThing
//
//  Created by HARISH RAM BAGHAVATH stu on 23/7/22.
//

import Foundation
import SwiftUI

struct EmojiView: View {
    var emojiSet: EmojiSet
    @State var selectedEmojis: [String] = []
    
    var body: some View {
        VStack {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                ForEach(emojiSet.emojis, id: \.self) { emoji in
                    Button {
                        selectedEmojis.append(emoji)
                    } label: {
                        Text(emoji)
                            .font(.system(size: 100))
                    }
                }
            }

            BouncyView(emojis: selectedEmojis){ surface in
                switch surface{
                case .emoji:
                    play(sound: "Sing-Sing-Singapore-Chorus.mp3")
                case .wall:
                    play(sound: "Sing-Sing-Singapore-Chorus.mp3")
                }
            }
        }
    }
}
