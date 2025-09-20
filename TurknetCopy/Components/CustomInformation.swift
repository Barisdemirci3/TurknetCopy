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
        HStack(spacing: 13) {
            Rectangle()
                .fill(Color.main)
                .frame(width: 5)
                .frame(height: 75)// çizginin kalınlığı
            Text(text)
                .font(.system(size: 13))
                .foregroundStyle(Color.black.opacity(0.6))
                .multilineTextAlignment(.leading)
                .padding(.trailing, 20)
            
        }
        .background(Color.main.opacity(0.17))
        .clipShape(RoundedRectangle(cornerRadius: 5))
        .frame(alignment: .leading)
    }
}

#Preview {
    CustomInformation(text: "Otomatik ödeme talimatınız var. Faturanız ödeme tarihi geldiğinde otomatik olarak ödenecektir")
}
