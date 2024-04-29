//
//  DoctorModel.swift
//  MedicalApp
//
//  Created by Mobin on 3/26/24.
//

import Foundation

struct DoctorModel: Identifiable, Codable {
    let id: UUID
    let firstName: String?
    let lastName: String?
    let specialty: String?
    let phone: String?
    let email: String?
    let explanation: String?
    let address:String?

    // Define coding keys to match JSON property names
    enum CodingKeys: String, CodingKey {
        case id
        case firstName = "firstName"
        case lastName = "lastName"
        case specialty = "specialty"
        case phone = "phone"
        case explanation = "explanation"
        case email = "email"
        case address = "address"
    }
}

typealias Doctors = [DoctorModel]
