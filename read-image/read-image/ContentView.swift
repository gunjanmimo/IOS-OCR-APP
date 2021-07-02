//
//  ContentView.swift
//  read-image
//
//  Created by Gunjan  Paul on 02/07/21.
//

import SwiftUI

struct ContentView: View {
    @State private var showScannerSheet = false
    @State private var texts:[ScanData] = []
    var body: some View {
        NavigationView{
            VStack{
                if texts.count>0{
                    List{
                        ForEach(texts){text in
                            NavigationLink(
                            
                                destination: ScrollView{Text(text.content)},
                                label: {
                                    Text(text.content).lineLimit(1)
                                })
                        }
                    }
                }
                else{
                    Text("No scan yet").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
            }
                .navigationTitle("Read Image")
                .navigationBarItems(trailing: Button(action: {
                    self.showScannerSheet = true
                }, label: {
                    Image(systemName: "doc.text.viewfinder")
                    font(.title)
                })
                .sheet(isPresented: $showScannerSheet, content: {
                    Text("Sheet Content")
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
