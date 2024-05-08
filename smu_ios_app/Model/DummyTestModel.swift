//
//  DummyTestModel.swift
//  smu_ios_app
//
//  Created by Mobin on 5/1/24.
//

import Foundation


// Define a struct for the data model
struct DummyTestModel: Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}

// Define a type alias for an array of posts
typealias Posts = [DummyTestModel]
