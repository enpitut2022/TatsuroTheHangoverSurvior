//
//  DataControler.swift
//  kaiben
//
//  Created by 東地亮太 on 2022/07/29.
//

import Foundation
import CoreData

class DataController:ObservableObject{
    let container = NSPersistentContainer(name: "kaibendata")
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
       }
    }
}
