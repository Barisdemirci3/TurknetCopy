//
//  Slider.swift
//  TurknetCopy
//
//  Created by Barış Demirci on 19.09.2025.
//

import SwiftUI

struct Slider: View {
    @State var SliderValue: Int = 0
    var body: some View {
        VStack(alignment: .leading){
            Image("gigacrew")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            Text("12 Aylık Peşin Ödemeye Fiyat Fırsatı")
                .padding(.top)
                .foregroundStyle(Color.main)
                .font(.system(size: 19, weight: .bold, design: .rounded))
            Text("İndirim ve fiyatı sabitleme imkanı için 12 ay peşin öde. Dilediğinde paran iade")
                .padding(.top, 5)
                .font(.footnote)
                .foregroundStyle(Color.black.opacity(0.75))
            SliderButton(ButtonName: "Hemen Katıl", ButtonIcon: "chevron.right")
                .padding(.top)
            HStack(spacing: 8){
                    Spacer()
                    ForEach(0..<5){index in
                        if SliderValue == index {
                            Circle().fill(Color.slider)
                                .frame(width: 10)
                        }
                        Circle().fill(Color.gray)
                            .frame(width: 10)
                            .opacity(0.7)
                    }
                    Spacer()
                }
            .padding(.top)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
    }
}

#Preview {
    Slider()
}
