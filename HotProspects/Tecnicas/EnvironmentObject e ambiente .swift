//
//  EnvironmentObject e ambiente .swift
//  HotProspects
//
//  Created by Boris R on 20/06/23.
//

import SwiftUI

@MainActor class User: ObservableObject {
    @Published var name = "Taylor Swift"
}
struct EditView: View{
    @EnvironmentObject var user: User
    
    
    var body: some View{
        TextField("Name", text: $user.name)
    }
}

struct DisplayViewL: View{
    @EnvironmentObject var user: User
    
    var body: some View{
        Text(user.name)
    }
}
struct EnvironmentObject_e_ambiente_: View {
    @StateObject private var user = User() // como o user faz paste da class MainActor User 
    
    var body: some View {
        VStack{
            EditView()
            DisplayViewL()
        }
        .environmentObject(user)
    }
}

struct EnvironmentObject_e_ambiente__Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObject_e_ambiente_()
    }
}
