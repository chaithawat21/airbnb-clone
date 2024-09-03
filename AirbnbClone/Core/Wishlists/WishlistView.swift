//
//  WishlistView.swift
//  AirbnbClone
//
//  Created by Chaithawat Pinsuwan on 15/8/24.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Log in to view your wishlists")
                        .font(.headline)

                    Text("You can create, view or edit once you've logged in")
                        .font(.subheadline)
                }

                Spacer()

                // login button
                Button {
                    print("DEBUG: Login")
                } label: {
                    Text("Log in")
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                .padding(.vertical)
            }
            .padding()
            .navigationTitle("Wishlists")
        }
    }
}

#Preview {
    WishlistView()
}

