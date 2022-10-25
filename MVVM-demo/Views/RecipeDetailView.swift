//
//  RecipeDetailView.swift
//  MVVM-demo
//
//  Created by Mac on 25/10/2022.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                //MARK: Recipe Image
                
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                //MARK: Recipie Ingredients
                VStack(alignment: .leading){
                    Text("Ingredients")
                        .font(.headline)
                        .padding([.bottom,.top],5)
                    ForEach(recipe.ingredients,id:\.self) { item in
                        Text("- \(item)")
                            .padding(.bottom,5)
                    }
                }
                .padding([.leading,.trailing],15)
                Divider()
                //MARK: Recipie instruction
                VStack(alignment: .leading) {
                    Text("Directions")
                        .font(.headline)
                        .padding([.bottom, .top],5)
                    ForEach (0..<recipe.directions.count,id:\.self) { index in
                        Text("\(index+1)- \(recipe.directions[index])")
                            .padding(.vertical,1)
                        
                    }
                }
                .padding([.leading,.trailing],15)
            }
        }
        
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        //dummy recipe
        let model = RecipeModel()
        RecipeDetailView(recipe: model.recipes[0])
    }
}
