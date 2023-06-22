//
//  MenuContextua.swift
//  HotProspects
//
//  Created by Boris R on 22/06/23.
//

import SwiftUI

struct MenuContextua: View {
    @State private var backgroudColor = Color.red
    
    var body: some View {
        VStack{
            Text("Hello Word")
                .padding()
                .background(backgroudColor)
            
            Text("Change Color")
                .padding()
                .contextMenu{
                    Button(role: .destructive){ // este role: . destructive habilita que o botão tenha cor se não colocar o menu contectual ira aparecer padrão
                        backgroudColor = .red
                    } label: {
                        Label("Red", systemImage: "checkmark.circle.fill")
                        
                    }
                    Button("Gree"){
                        backgroudColor = .green
                    }
                    Button("Blue"){
                        backgroudColor = .blue
                    }
                }
        }
    }
}

struct MenuContextua_Previews: PreviewProvider {
    static var previews: some View {
        MenuContextua()
    }
}
