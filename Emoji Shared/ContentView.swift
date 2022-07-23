import SwiftUI

struct ContentView: View {
    var emojiSets = [
        EmojiSet(name: "Fruits", emojis: ["�","�","�","�","�","�"]),
        EmojiSet(name: "Candy", emojis: ["�","�","�"])
    ]

    var body: some View {
        List(emojiSets) { emojiSet in
            VStack(alignment: .leading) {
                Text(emojiSet.name)
                    .font(.headline)
                Text(emojiSet.emojis.joined())
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
