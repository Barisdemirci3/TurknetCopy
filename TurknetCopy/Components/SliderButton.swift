//
//  SliderButton.swift
//  TurknetCopy
//
//  Created by Barış Demirci on 19.09.2025.
//

import SwiftUI

struct SliderButton: View {
    let ButtonName: String
    let ButtonIcon: String
    var body: some View {
        Button {
            print("Tıklandı")
        } label: {
            ZStack{
            HStack{
                    Text("\(ButtonName)")
                    .font(.system(size: 14, weight: .medium))
                    Spacer()
                    Image(systemName: "\(ButtonIcon)")
                    .bold()
                    .padding(.trailing, 10)
                }
                .padding(13)
                .background(Color.main)
                .foregroundStyle(Color.white)
                .cornerRadius(10)
                .font(.system(size: 14))
            }
        }
    }
}

#Preview {
    SliderButton(ButtonName: "Hemen Katıl", ButtonIcon: "chevron.right")
}
