//
//  MainView.swift
//  TurknetCopy
//
//  Created by Barış Demirci on 19.09.2025.
//

import SwiftUI

struct MainView: View {
    @State var text: String = ""
    var body: some View {
        ZStack {
            Color.background
                .ignoresSafeArea()
            VStack{
                Header()
                ScrollView(showsIndicators: false){
                    HStack{
                        VStack(alignment: .leading){
                            Text("Hoş Geldiniz,")
                                .font(.system(size: 18))
                                .foregroundStyle(Color.gray)
                            Text("Barış Demirci")
                                .font(.system(size: 24, weight: .bold))
                                .foregroundStyle(Color.main)
                        }
                        .padding(.top, 50)
                        Spacer()
                    }
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.main)
                            .padding([.leading, .trailing], 8)
                            .font(.system(size: 19, weight: .medium))
                        ZStack(alignment: .leading){
                            if text.isEmpty {
                                Text("İşlem veya Sayfa Ara")
                                    .foregroundStyle(Color.privateSecondary)
                            }
                            TextField("", text: $text)
                        }
                        
                            
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .foregroundStyle(Color.black)
                    Slider()
                        .padding(.top, 10)
                    Price()
                        .padding(.top, 10)
                }
            }
            .padding()
        }
    }
}

#Preview {
    MainView()
}
