//
//  ContentView.swift
//  ContextMenu
//
//  Created by Roman Fedotov on 23.07.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("photo_2021-06-05 20.44.46")
            .resizable()
            .frame(height: 300)
            .cornerRadius(10.0)
            .padding()
            .contextMenu {
                VStack {
                    Button(action: {
                        print("Copy")
                    }) {
                        HStack {
                            Image(systemName: "doc.on.doc")
                            Text("Copy")
                        }
                    }
                    Button(action: {
                        print("Share")
                    }) {
                        HStack {
                            Image(systemName: "square.and.arrow.up")
                            Text("Share")
                        }
                    }
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
