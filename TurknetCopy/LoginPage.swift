//
//  LoginPage.swift
//  TurknetCopy
//
//  Created by Barış Demirci on 20.09.2025.
//

import SwiftUI

struct LoginPage: View {
    var body: some View {
        ZStack{
            Color.background
                .ignoresSafeArea(edges: .all)
            VStack{
                HStack{
                    Image("turknetlogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 130)
                        .padding(.bottom, 150)
                }
                VStack(spacing: 35){
                    TextField("Kullanıcı Adı", text: .constant(""))
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 0.5, y: 0.9)
                    SecureField("Şifre", text: .constant(""))
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 0.5, y: 0.9)
                }
                CustomInformation(text: "Güvenliğiniz için sistemde kayıtlı olan telefon numaranıza doğrulama kodu gönderilecektir.")
                    .padding(.top, 20)
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    LoginPage()
}
