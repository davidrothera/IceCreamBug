//
//  ViewController.swift
//  IceCreamTest
//
//  Created by David Rothera on 07/06/2019.
//  Copyright © 2019 Supratude Limited. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    @IBAction func createButtonPressed(_ sender: Any) {
        let realm = try! Realm()
        
        let person = Person()
        person.name = randomString(length: 8)
        
        var dogs = [Dog]()
        for i in 0..<10 {
            let dog = Dog()
            dog.name = "Dog \(i)"
            dog.owner = person
            dogs.append(dog)
        }
        
        var cats = [Cat]()
        for i in 0..<10 {
            let cat = Cat()
            cat.name = "Cat \(i)"
            cat.owner = person
            cats.append(cat)
        }
        
        try! realm.write {
            realm.add(person)
            realm.add(dogs)
            realm.add(cats)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func randomString(length: Int) -> String {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        return String((0..<length).map{ _ in letters.randomElement()! })
    }
    
}

