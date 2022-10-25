//
//  ContentView.swift
//  MVVM-demo
//
//  Created by Mac on 25/10/2022.
//

import SwiftUI

struct RecipeListView: View {
    
    @ObservedObject var model = RecipeModel();
    
    var body: some View {
        NavigationView {
            List (model.recipes){
                r in
                NavigationLink(
                    destination: RecipeDetailView(recipe: r) , label:{ HStack() {
                        Image(r.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50,height: 50,alignment: .center)
                            .clipped()
                            .cornerRadius(5)
                        Text(r.name)
                    }
                    })
               
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
