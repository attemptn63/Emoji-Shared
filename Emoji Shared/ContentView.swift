import SwiftUI

struct ContentView: View {
    var emojiSets = [
        EmojiSet(name: "funni", emojis: ["💦", "🍆"]),
        EmojiSet(name: "cry", emojis: ["😭", "😢"]),
        
    ]
    var body: some View {
        NavigationView {
            List(emojiSets) { emojiSet in
                NavigationLink(destination: EmojiView(emojiSet: emojiSet)) {
                    VStack(alignment: .leading) {
                        Text(emojiSet.name)
                            .font(.headline)
                        Text(emojiSet.emojis.joined())
                    }
                }
            }
            .navigationTitle("Emoji Partayyy 😩🍆💦")
        }
    }
}
