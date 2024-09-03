//
//  MockExploreServiceImpl.swift
//  AirbnbClone
//
//  Created by Chaithawat Pinsuwan on 15/8/24.
//

import Foundation

class MockExploreServiceImpl: ExploreService {
    func fetchListings() async throws -> [Listing] {
        return Mock.listings
    }
}

