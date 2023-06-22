//
//  TabView.swift
//  HotProspects
//
//  Created by Boris R on 20/06/23.
//

import SwiftUI

struct TabViews: View {
    @State private var selectedTab = "One"
    
    var body: some View {
        
        TabView(selection: $selectedTab){
            Text("Tab 1")
                .onTapGesture { // ao tomcar no texto Tabe 1 vai para a tab 2, onde esta a tag com o mesmo nome two.
                    selectedTab = "two"
                }
                .tabItem{
                    Label("One", systemImage: "star")
                }
                .tag("One") // usar tag para identificar as tabView.
            
            Text("Tab 2")
                .tabItem{
                 Label("two", systemImage: "circle")
                }
                .tag("two") // usar tag para identificar as tabView
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabViews()
    }
}
