//
//  Publised manuamente .swift
//  HotProspects
//
//  Created by Boris R on 20/06/23.
//

import SwiftUI
@MainActor class DelayerUpdater: ObservableObject{
    var value = 0 {
        willSet{
            objectWillChange.send()
        }
    }
    
    init(){
        for i  in 1...10{
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(i)){
                self.value += 1
            }
        }
    }
}
struct Publised_manuamente_: View {
    @StateObject var update = DelayerUpdater()
    
    var body: some View {
        Text("Value is: \(update.value)")    }
}

struct Publised_manuamente__Previews: PreviewProvider {
    static var previews: some View {
        Publised_manuamente_()
    }
}
