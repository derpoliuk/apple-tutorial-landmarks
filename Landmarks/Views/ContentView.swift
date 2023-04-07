//
//  ContentView.swift
//  Landmarks
//
//  Created by Stanislav Derpoliuk on 2023-04-06.
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
