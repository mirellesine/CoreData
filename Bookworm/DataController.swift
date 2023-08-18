//
//  DataController.swift
//  Bookworm
//
//  Created by Mirelle Sine on 14/08/23.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    
    // Cria uma instância de NSPersistentContainer com o nome "Bookworm"
    let container = NSPersistentContainer(name: "Bookworm")
    
    init() {
        container.loadPersistentStores { descriptoin, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
