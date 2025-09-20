//
//  SwiftUIView.swift
//  TurknetCopy
//
//  Created by Barış Demirci on 20.09.2025.
//

import SwiftUI

struct MainButton: View {
    var void: (() -> Void)? = nil
    var body: some View {
        Button {
            void?()
        } label: {
            Text("Devam et")
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.main)
                .foregroundStyle(Color.white)
                .font(.system(size: 20, weight: .medium))
                .cornerRadius(10)
        }

    }
}

#Preview {
    MainButton {
        print("deneme")
    }
}
