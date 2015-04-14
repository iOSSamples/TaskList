//
//  Status.swift
//  TaskList
//
//  Created by Juliana Chahoud on 10/12/14.
//  Copyright (c) 2014 FIAP. All rights reserved.
//

import Foundation
import CoreData

class Status: NSManagedObject {

    @NSManaged var tipo: String
    @NSManaged var tasks: NSSet

}
