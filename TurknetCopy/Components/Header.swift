//
//  Header.swift
//  TurknetCopy
//
//  Created by Barış Demirci on 19.09.2025.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack{
            Image("turknetlogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 130)
            Spacer()
            Image(systemName: "bell")
                .font(.system(size: 24))
                .opacity(0.5)
                .foregroundStyle(Color.privateSecondary)
        }
        .padding(.bottom, 10)
    }
}

#Preview {
    Header()
}
