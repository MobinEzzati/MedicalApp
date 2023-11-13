//
//  CoreDataViewModel.swift
//  MedicalApp
//
//  Created by mobin on 11/4/23.
//

import Foundation
import CoreData

class CoreDataViewModel:ObservableObject {
    
    let container: NSPersistentContainer
    var userInfo : [UserEntity] = []
    init() {
        container = NSPersistentContainer(name: "RegisterContainer")
        container.loadPersistentStores { (description, error)in
            if let error = error {
                print("ERROR Loading data: \(error.localizedDescription)")
            }
        }
        
    }
    
    func fetchData() {
        
        let request = NSFetchRequest<UserEntity>(entityName: "RegisterContainer")
        request.fetchLimit = 1 
        do{
            userInfo =  try container.viewContext.fetch(request)
        }catch let error {
            print("Error fetching \(error.localizedDescription)")
        }
    }
    
    func addUserInformation (firstName:String, lastName:String, email:String, password:String) {
        
        
        let userInformaiton = UserEntity(context: container.viewContext)
        userInformaiton.firstName = firstName
        userInformaiton.lastName = lastName
        userInformaiton.email = email
        userInformaiton.password = password
        saveData()
        

    }
    
    func saveData() {
        do{
            try container.viewContext.save()
            fetchData()
            
        }catch let error {
            print("we have error in save data Section : \(error)")
        }
    }
}
