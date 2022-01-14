//
//  GameView.swift
//  Piramides
//
//  Created by Erik Leon on 1/11/22.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "pause")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                Image(systemName: "restart")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
            }
            Spacer()
            PyramidView()
            Spacer()
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            GameView()
        }
    }
}
