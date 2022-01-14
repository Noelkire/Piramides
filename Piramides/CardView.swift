//
//  CardView.swift
//  Piramides
//
//  Created by Erik Leon on 11/25/21.
//

import SwiftUI

struct CardView: View {
    var value: Int
    var suite: String
    var color: Color
    @State var flipped: Bool
    
    func simpleHaptic(status: Bool) {
        let generator = UINotificationFeedbackGenerator()
        if(status){
            generator.notificationOccurred(.success)
        } else {
            generator.notificationOccurred(.error)
        }
    }
    
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 5)
                .rotation3DEffect(self.flipped ? Angle(degrees: 0): Angle(degrees: 180), axis: (x: CGFloat(0), y: CGFloat(10), z: CGFloat(0)))
                .animation(.default)
                .foregroundColor(self.flipped ? .white : .blue)
                .shadow(radius: 5)
            VStack{
                Text(String(value))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                
                Spacer()
                Image(systemName: suite)
                    .resizable()
                    .frame(width: 10, height: 10)
                Spacer()
                Text(String(value))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .foregroundColor(self.flipped ? color : .clear)
            .rotation3DEffect(self.flipped ? Angle(degrees: 0): Angle(degrees: 180), axis: (x: CGFloat(0), y: CGFloat(10), z: CGFloat(0)))
            .animation(.default)
            .font(.body)
        }
        .frame(width:40,height: 50)
        .onTapGesture {
            self.flipped.toggle()
            self.simpleHaptic(status: flipped)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(value: 5, suite: "suit.spade.fill",color: .black,flipped: true)
    }
}
