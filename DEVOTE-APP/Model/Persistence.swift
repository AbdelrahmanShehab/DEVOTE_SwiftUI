//
//  Persistence.swift
//  DEVOTE-APP
//
//  Created by Abdelrahman Shehab on 12/04/2023.
//

import CoreData

struct PersistenceController {
    // MARK: - 1. PERSISTANCE CONTROLLER
    static let shared = PersistenceController()
    
    // MARK: - 2. PERSISTANCE CONTAINER
    let container: NSPersistentContainer
    
    // MARK: -  3. INTIALIZATION (Load the persistance store)
    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "DEVOTE_APP")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        container.viewContext.automaticallyMergesChangesFromParent = true
    }
    
    // MARK: -  PREVIEW
    static var preview: PersistenceController = {
        let result = PersistenceController(inMemory: true)
        let viewContext = result.container.viewContext
        for i in 0..<4 {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()
            newItem.task = "Sample task No\(i)"
            newItem.completion = false
            newItem.id = UUID()
        }
        do {
            try viewContext.save()
        } catch {
            
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
        return result
    }()
    
}
