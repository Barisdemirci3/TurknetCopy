//
//  LoginPage.swift
//  TurknetCopy
//
//  Created by Barış Demirci on 20.09.2025.
//

import SwiftUI

struct LoginPage: View {
    @State var showPassword: Bool = false
    @State var identity_number: String = ""
    @State var password: String = ""
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
                        .padding(.bottom, 95)
                }
                VStack(spacing: 35){
                    ZStack(alignment: .leading){
                        TextField("", text: .constant(""))
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 0.5, y: 0.9)
                        if identity_number.isEmpty {
                            Text("Tc Kimlik No")
                                .padding()
                                .foregroundStyle(Color.privateSecondary.opacity(0.6))
                        }
                    }
                    ZStack(alignment: .leading) {
                        HStack {
                            if showPassword {
                                TextField("", text: $password)
                            } else {
                                SecureField("", text: $password)
                            }
                            Image(systemName: showPassword ? "eye.slash" : "eye")
                                .foregroundStyle(Color.gray)
                                .onTapGesture {
                                    withAnimation(.easeInOut) {
                                           showPassword.toggle()
                                       }
                                }
                        }
                        if password.isEmpty {
                            Text("Şifre")
                                .foregroundStyle(Color.privateSecondary.opacity(0.6))
                                
                        }
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 0.5, y: 0.9)
                }
                .padding()
                CustomInformation(text: "Güvenliğiniz için sistemde kayıtlı olan telefon numaranıza doğrulama kodu gönderilecektir.")
                    .padding(.top, 20)
                Spacer()
                VStack(spacing: 50){
                    MainButton()
                        .padding()
                    Button {
                        print("hesaba erişemiyor")
                    } label: {
                        Text("Hesabınıza Erişemiyor Musunuz?")
                            .foregroundStyle(Color.main)
                            .font(.system(size: 16))
                    }
                }
                .padding(.bottom, 75)
            }
            .padding()
        }
    }
}

#Preview {
    LoginPage()
}
