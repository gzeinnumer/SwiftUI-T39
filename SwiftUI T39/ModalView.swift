//
//  ModalView.swift
//  SwiftUI T39
//
//  Created by M Fadli Zein on 24/03/22.
//

import SwiftUI

struct ModalView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.blue)
                .ignoresSafeArea()
            
            VStack {
                Text("Close Modal!")
                    .padding()
                    .foregroundColor(.white)
                    .onTapGesture {
                        presentationMode.wrappedValue.dismiss()
                    }
            }
        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
