//
//  DataService.swift
//  MVVM-demo
//
//  Created by Mac on 25/10/2022.
//

import Foundation

class DataService {
   
    func getLocalData() -> [Recipe] {
        //get path
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        //get url object
        guard pathString != nil else {
            return [Recipe]()
        }
        let url = URL(fileURLWithPath: pathString!)
        
        //create data object
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            do{
                let list = try decoder.decode([Recipe].self, from: data)
                for r in list {
                    r.id = UUID()
                }
                return list
            }catch{
                print(error)
            }
        }catch{
            print(error)
        }
        return [Recipe]()
    }
}
