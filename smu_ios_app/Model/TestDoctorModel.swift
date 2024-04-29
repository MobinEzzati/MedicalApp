//
//  testDoctorModel.swift
//  smu_ios_app
//
//  Created by Mobin on 4/17/24.
//

import Foundation


struct TestDoctorModel: Identifiable, Codable {
    let id: UUID
    let name: String
    let image: String
    let specialisedArea: String?
    let rating: String
    let distance: String

    // Define coding keys to match JSON property names
    // This is optional in this case but useful for demonstration
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case image
        case specialisedArea = "specialisedArea"
        case rating
        case distance
    }
}
typealias testDoctors = [TestDoctorModel]
