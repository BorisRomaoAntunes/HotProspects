//
//  package dependecies.swift
//  HotProspects
//
//  Created by Boris R on 22/06/23.
//

import SwiftUI
import SamplePackage

struct package_dependecies: View {
    let possibleNumber = Array(1...60)
    var body: some View {
    
               Text(result)
           }
    
           var result: String {
               let selected = possibleNumber.random(7).sorted() // usando random que que faz parte do samplePackage
               let strings = selected.map(String.init)
               return strings.joined(separator: ", ")
    }
}

struct package_dependecies_Previews: PreviewProvider {
    static var previews: some View {
        package_dependecies()
    }
}
