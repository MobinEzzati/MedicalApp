//
//  EventModel.swift
//  smu_ios_app
//
//  Created by Mobin on 4/15/24.
//

import Foundation

struct EventModel: Codable {
    
    var id : UUID?
    var eventName:String?
    var eventDate:Date?
}
