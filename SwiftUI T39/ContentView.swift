//
//  ContentView.swift
//  SwiftUI T39
//
//  Created by M Fadli Zein on 24/03/22.
//

import SwiftUI

struct ContentView: View {
    @State var showModal = false
    
    var body: some View {
        Text("Show Modal")
            .fullScreenCover(
                isPresented: $showModal,
                content: {
                    ModalView()
                }
            )
            .onTapGesture {
                showModal = true
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
