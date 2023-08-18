//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Mirelle Sine on 14/08/23.
//

import SwiftUI

@main
struct BookwormApp: App {
    
    // Cria uma instância de DataController como uma propriedade com estado
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            
                //configura o ambiente para fornecer o contexto de gerenciamento do core data da instancia de DataController
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
