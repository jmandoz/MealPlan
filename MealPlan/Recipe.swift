//
//  Recipe.swift
//  MealPlan
//
//  Created by Jason Mandozzi on 6/28/20.
//  Copyright © 2020 Jason Mandozzi. All rights reserved.
//

import Foundation

struct Recipe: Identifiable  {
    var id: Int
    let name: String
    let ingredients: [String : String]
    let directions: [Int : String]
    let cookTime: Int
    let tag: Tag
}

enum Tag {
    case dessert
    case breakfast
    case vegeterian
}
