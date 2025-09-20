//
//  TurknetCopyApp.swift
//  TurknetCopy
//
//  Created by Barış Demirci on 19.09.2025.
//

import SwiftUI

@main
struct TurknetCopyApp: App {
    init() {
        UITextField.appearance().attributedPlaceholder = NSAttributedString(
            string: "İşlem veya Sayfa Ara",
            attributes: [.foregroundColor: UIColor.black]
        )
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
