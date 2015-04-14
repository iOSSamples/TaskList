//
//  Task.swift
//  TaskList
//
//  Created by Juliana Chahoud on 10/12/14.
//  Copyright (c) 2014 FIAP. All rights reserved.
//

import Foundation
import CoreData

class Task: NSManagedObject {

    @NSManaged var nome: String
    @NSManaged var status: Status

}
