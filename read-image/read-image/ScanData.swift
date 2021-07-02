//
//  ScanData.swift
//  read-image
//
//  Created by Gunjan  Paul on 02/07/21.
//

import Foundation


struct ScanData:Identifiable {
    var id = UUID()
    let content:String
    init(content:String){
        self.content = content
    }
}
