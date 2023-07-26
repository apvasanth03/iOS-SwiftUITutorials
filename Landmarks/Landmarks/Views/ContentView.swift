//
//  ContentView.swift
//  Landmarks
//
//  Created by Vasanthakumar Annadurai on 20/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
