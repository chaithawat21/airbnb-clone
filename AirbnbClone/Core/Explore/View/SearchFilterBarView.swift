//
//  SearchFilterBarView.swift
//  AirbnbClone
//
//  Created by Chaithawat Pinsuwan on 15/8/24.
//

import SwiftUI

struct SearchFilterBarView: View {
    @ObservedObject var viewModel: ExploreViewModel

    var body: some View {
        HStack {
            HStack(spacing: 12) {
                // image
                Image(systemName: "magnifyingglass")

                // location info
                VStack(alignment: .leading, spacing: 2) {
                    Text(viewModel.searchLocation.isEmpty ? "Where to?" : viewModel.searchLocation)
                        .font(.footnote)
                        .fontWeight(.bold)

                    Text("\(viewModel.searchLocation.isEmpty ? "Anywhere - " : "")Any Week - Add Guests")
                        .font(.caption2)
                        .foregroundStyle(.gray)
                }
            }

            Spacer()

            // filter
            Button {
                print("DEBUG: opening the filters...")
            } label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.foreground)
            }
        }

        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(.foregroundAccent)
        .clipShape(Capsule())
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray3))
                .dropShadow()
        }
        .padding()
    }
}

#Preview {
    SearchFilterBarView(viewModel: ExploreViewModel(with: MockExploreServiceImpl()))
}
