//
//  ExploreService.swift
//  AirbnbClone
//
//  Created by Chaithawat Pinsuwan on 15/8/24.
//

import Foundation

protocol ExploreService {
    func fetchListings() async throws -> [Listing]
}
