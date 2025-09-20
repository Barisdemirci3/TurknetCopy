//
//  Price.swift
//  TurknetCopy
//
//  Created by Barış Demirci on 19.09.2025.
//

import SwiftUI

struct Price: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("Eylül 2025 / 100633382")
                    .font(.system(size: 12))
                    .foregroundStyle(Color.privateSecondary)
                Spacer()
                Text("Ödenmedi")
                    .padding([.trailing, .leading], 13)
                    .padding([.top, .bottom], 7)
                    .background(Color.red)
                    .foregroundStyle(Color.white)
                    .cornerRadius(5)
                    .font(.system(size: 13))
                Image(systemName: "chevron.right")
                    .foregroundStyle(Color.main)
                    .font(.system(size: 18))
            }
            Text("651,51 TL")
                .font(.system(size: 21, weight: .bold))
                
                .foregroundStyle(Color.privateSecondary)
            + Text(" / Ay")
                .font(.system(size: 13))
                .foregroundStyle(Color.black.opacity(0.8))
            VStack(alignment: .leading){
                HStack(alignment: .center){
                    Image(systemName: "text.page.badge.magnifyingglass")
                        .foregroundStyle(Color.main)
                    Text("Detaylı (1 Aylık) Faturalama Çizelgeniz")
                        .foregroundStyle(Color.main)
                        .bold()
                }
                .font(.system(size: 13))
                HStack(alignment: .center){
                    Image(systemName: "text.document")
                        .foregroundStyle(Color.pink)
                    Text("Fatura Kesim: ")
                        .foregroundStyle(Color.privateSecondary)
                    + Text("03.09.2025")
                        .foregroundStyle(Color.black)
                }
                .font(.system(size: 13, weight: .light))
                .padding(.top)
                HStack(alignment: .center){
                    Image(systemName: "exclamationmark.triangle.fill")
                        .foregroundStyle(Color.yellow)
                    Text("Son Ödeme: ")
                        .foregroundStyle(Color.privateSecondary)
                        .fontWeight(.light)
                    + Text("24.09.2025 ")
                        .foregroundStyle(Color.black)
                        .fontWeight(.light)
                    + Text("(5 gün kaldı)")
                        .foregroundStyle(Color.black)
                        .bold()
                }
                .font(.system(size: 13))
                .padding(.top)
            }.padding([.top, .bottom])
          // buraya info
            CustomInformation(text: "Otomatik ödeme talimatınız var. Faturanız ödeme tarihi geldiğinde otomatik olarak ödenecektir")
            VStack{
                Text("💡 Abonelik ücretleri, her dönemin başlangıcında faturalanır ve hesabınızda görüntülenmesi fatura tarihinden itibaren ") + Text("1 haftayı").bold() + Text(" bulabilir")
            }
            .padding(.top)
            .font(.system(size: 13))
            .frame(maxWidth: .infinity)
            .foregroundStyle(Color.privateSecondary)
            .multilineTextAlignment(.leading)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
    }
}

#Preview {
    Price()
}
