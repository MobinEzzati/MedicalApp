//
//  FamilyModel.swift
//  smu_ios_app
//
//  Created by Mobin on 4/15/24.
//

import Foundation


struct FamilyModel: Codable {
    
    var id: UUID
    var firstName: String
    var lastName:String
    var relationship:String
    var email: String
    var phoneNumber: String
    
}
