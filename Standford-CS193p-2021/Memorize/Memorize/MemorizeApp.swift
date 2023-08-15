//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Vasanthakumar Annadurai on 14/08/23.
//

import SwiftUI

@main
struct MemorizeApp: App {
    
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
