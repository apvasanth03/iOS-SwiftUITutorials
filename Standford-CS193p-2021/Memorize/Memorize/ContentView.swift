//
//  ContentView.swift
//  Memorize
//
//  Created by Vasanthakumar Annadurai on 14/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 3)
            
            Text("Hello World")
        }
        .padding(.horizontal)
        .foregroundColor(.red)
        
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
