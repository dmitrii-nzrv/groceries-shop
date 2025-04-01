//
//  RoundButton.swift
//  GroceriesApp
//
//  Created by Dmitrii Nazarov on 31.03.2025.
//

import SwiftUI

struct RoundButton: View {
    @State var title: String = "Get started"
    var didTap: (() -> ())?
    var body: some View {
        Button {
            // означает если не nil, то вызови
            didTap?()
        } label: {
            Text( title)
                .font(.customfont(.regular, fontSize: 18))
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
        .background(Color.primaryApp)
        .cornerRadius(20)
    }
}

#Preview {
    RoundButton()
        .padding(20)
}
