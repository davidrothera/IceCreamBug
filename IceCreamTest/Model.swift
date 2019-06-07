//
//  Model.swift
//  IceCreamTest
//
//  Created by David Rothera on 07/06/2019.
//  Copyright © 2019 Supratude Limited. All rights reserved.
//

import Foundation
import RealmSwift
import IceCream

@objcMembers
class Person: Object, CKRecordConvertible, CKRecordRecoverable {
    dynamic var isDeleted = false
    dynamic var name: String?
    dynamic var uuid = UUID().uuidString
    
    override static func primaryKey() -> String? {
        return "uuid"
    }
}

@objcMembers
class Dog: Object, CKRecordConvertible, CKRecordRecoverable {
    dynamic var isDeleted = false
    dynamic var owner: Person?
    dynamic var name: String?
    dynamic var uuid = UUID().uuidString
    
    override static func primaryKey() -> String? {
        return "uuid"
    }
}

@objcMembers
class Cat: Object, CKRecordConvertible, CKRecordRecoverable {
    dynamic var isDeleted = false
    dynamic var owner: Person?
    dynamic var name: String?
    dynamic var uuid = UUID().uuidString
    
    override static func primaryKey() -> String? {
        return "uuid"
    }
}
