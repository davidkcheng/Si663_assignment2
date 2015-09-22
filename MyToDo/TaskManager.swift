//
//  TaskManager.swift
//  MyToDo
//
//  Created by David Cheng on 9/20/15.
//  Copyright © 2015 umsi663f15. All rights reserved.
//

import UIKit

var taskMgr = TaskManager()

struct task {
    var name = "Add Task Name"
    var desc = "Add Task Description"
}

class TaskManager: NSObject {
    var tasks = [task] ()
    
    func addtask(name: String, desc: String) {
        tasks.append(task(name: name, desc: desc))
    }
    
}
