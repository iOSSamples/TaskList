//
//  TaskDetailViewController.swift
//  TaskManager
//
//  Created by Juliana Chahoud on 12/07/14.
//  Copyright (c) 2014 Juliana Chahoud. All rights reserved.
//

import UIKit
import CoreData

class TaskDetailViewController: UIViewController {
    
    var managedObjectContext: NSManagedObjectContext?
    
    @IBOutlet var txtDesc: UITextField!
    
    var task: Task? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if task != nil {
            txtDesc.text = task?.nome
        }
    }
    
    @IBAction func done(sender: AnyObject) {
        if task != nil {
            editTask()
        } else {
            addTask()
        }
        dismissViewController()
    }
    
    @IBAction func cancel(sender: AnyObject) {
        dismissViewController()
    }
    
    func dismissViewController() {
        navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func addTask() {
        let entityDescripition = NSEntityDescription.entityForName("Task", inManagedObjectContext: managedObjectContext!)
        let task = Task(entity: entityDescripition!, insertIntoManagedObjectContext: managedObjectContext)
        task.nome = txtDesc.text
        managedObjectContext?.save(nil)
    }
    
    func editTask() {
        task?.nome = txtDesc.text
        managedObjectContext?.save(nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
