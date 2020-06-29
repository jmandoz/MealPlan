//
//  ContentView.swift
//  MealPlan
//
//  Created by Jason Mandozzi on 6/28/20.
//  Copyright © 2020 Jason Mandozzi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let data: [Recipe] = [
        Recipe(id: 1,
               name: "Faux Beef Dankness",
               ingredients: ["4 cups":"dankness", "1 tsp":"flour"],
               directions: [1:"Get the oven to 100", 2:"let it burn"], cookTime: 45, tag: .vegeterian),
        Recipe(id: 2,
               name: "Eggmaculate Conception",
               ingredients: ["4 cups":"faith", "1 tsp":"flour"],
               directions: [1:"Get the oven to 100", 2:"let it burn"], cookTime: 55, tag: .breakfast)
    ]
    
    var body: some View {
        NavigationView {
            List(data, id: \.id) { recipe in
                HStack {
                    Text(recipe.name)
                    VStack {
                        ZStack {
                            Capsule()
                                .fill(self.createTag(recipe.tag))
                                .frame(height: 20)
                            Text(self.createTagText(recipe.tag))
                        }
                    }
                }
            }
            .navigationBarTitle("Recipes")
        }
    }
    
    func createTag(_ tag: Tag) -> Color {
        switch tag {
        case .breakfast:
            return Color.yellow
        case .dessert:
            return Color.pink
        case .vegeterian:
            return Color.green
        }
    }
    
    func createTagText(_ tag: Tag) -> String {
        switch tag {
        case .breakfast:
            return "Breakfast"
        case .dessert:
            return "Dessert"
        case .vegeterian:
            return "Vegeterian"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
