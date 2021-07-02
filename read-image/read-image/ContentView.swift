//
//  ContentView.swift
//  read-image
//
//  Created by Gunjan  Paul on 02/07/21.
//

import SwiftUI

struct ContentView: View {
    @State private var showScannerSheet = false
    var body: some View {
        NavigationView{
            VStack{}
                .navigationTitle("Read Image")
                .navigationBarItems(trailing: Button(action: {
                    self.showScannerSheet = true
                }, label: {
                    Image(systemName: "doc.text.viewfinder")
                })
                .sheet(isPresented: $showScannerSheet, content: {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Sheet Content")/*@END_MENU_TOKEN@*/
                })
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
