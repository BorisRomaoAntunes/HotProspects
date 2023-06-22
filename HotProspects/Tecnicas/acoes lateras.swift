//
//  acoes lateras.swift
//  HotProspects
//
//  Created by Boris R on 22/06/23.
//

import SwiftUI

struct acoes_lateras: View {
    var body: some View {
        List{
            Text("Taylo Swift")
                .swipeActions{
                    Button{
                        print("Hi")
                    } label: {
                        Label("Send mensage", systemImage: "message")
                    }
                }
                .swipeActions(edge: .leading){
                    Button{
                        print("Hi")
                    } label: {
                        Label("Pin", systemImage: "pin")
                    }
                    .tint(.orange)
                }
        }
    }
}

struct acoes_lateras_Previews: PreviewProvider {
    static var previews: some View {
        acoes_lateras()
    }
}
