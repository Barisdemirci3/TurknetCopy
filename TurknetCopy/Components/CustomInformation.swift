//
//  CustomInformation.swift
//  TurknetCopy
//
//  Created by Barış Demirci on 20.09.2025.
//

import SwiftUI

struct CustomInformation: View {
    let text: String
    var body: some View {
        HStack{
            Text("\(text)")
                .font(.system(size: 13))
                .foregroundStyle(Color.black).opacity(0.6)
                .multilineTextAlignment(.leading)
        }
        .padding()
        .background(Color.main.opacity(0.17))
        .clipShape(RoundedRectangle(cornerRadius: 5))
        .frame(maxWidth: .infinity)
        .overlay(
               RoundedRectangle(cornerRadius: 2)
                   .fill(Color.main)
                   .frame(width: 9),   // çizginin kalınlığı
               alignment: .leading// sola hizalama
           )
    }
}

#Preview {
    CustomInformation(text: "Otomatik ödeme talimatınız var. Faturanız ödeme tarihi geldiğinde otomatik olarak ödenecektir")
}
