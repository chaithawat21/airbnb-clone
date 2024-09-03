//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Chaithawat Pinsuwan on 15/8/24.
//

import SwiftUI

struct ExploreView: View {
    // inject view model
    @StateObject var viewModel = ExploreViewModel(with: MockExploreServiceImpl())

    @State private var showDestinationSearchView = false

    var body: some View {
        NavigationStack {
            if showDestinationSearchView {
                DestinationSearchView(showView: $showDestinationSearchView,
                                      viewModel: viewModel)
            } else {
                ScrollView(.vertical) {
                    // search bar
                    SearchFilterBarView(viewModel: viewModel)
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestinationSearchView.toggle()
                            }
                        }

                    // listings
                    LazyVStack(spacing: 32) {
                        ForEach(viewModel.listings) { listing in
                            NavigationLink(value: listing) {
                                ListingItemView(listing: listing)
                            }
                        }
                    }
                }.navigationDestination(for: Listing.self) { listing in
                    ListingDetailsView(listing: listing)
                        .navigationBarBackButtonHidden()
                }
            }
        }
        .tint(.primary)
    }
}

#Preview {
    ExploreView(viewModel: ExploreViewModel(with: MockExploreServiceImpl()))
}
