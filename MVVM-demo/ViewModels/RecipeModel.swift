//
//  RecipeModel.swift
//  MVVM-demo
//
//  Created by Mac on 25/10/2022.
//

import Foundation

class RecipeModel: ObservableObject {
        
    @Published  var recipes = [Recipe]()
    
    
    init() {
    //instance of data service
        let service = DataService();
        self.recipes =  service.getLocalData()
        
    }
    
    
}
