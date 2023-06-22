//
//  Controlando a interpolação de imagens no SwiftUI.swift
//  HotProspects
//
//  Created by Boris R on 22/06/23.
//

import SwiftUI

struct Controlando_a_interpolac_a_o_de_imagens_no_SwiftUI: View {
    var body: some View {
        Image("example")
            .interpolation(.none) // ira a impterpolação dos pixal
            .resizable()
            .scaledToFit()
            .frame(maxHeight: .infinity)
            .background(.black)
            .ignoresSafeArea()
    }
}

struct Controlando_a_interpolac_a_o_de_imagens_no_SwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        Controlando_a_interpolac_a_o_de_imagens_no_SwiftUI()
    }
}
