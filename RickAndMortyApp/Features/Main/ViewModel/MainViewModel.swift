//
//  MainViewModel.swift
//  RickAndMortyApp
//
//  Created by Martin Bove on 25/10/22.
//

import Foundation

class MainViewModel{
    
func loadAllCharacters(withCompletion completion: @escaping (CharacterInfoModel?) -> Void) {
  if let url = URL(string: "https://rickandmortyapi.com/api/character"){
    let task = URLSession.shared.dataTask(with: url) { (data, _, _) -> Void in
           guard let data = data else {
               DispatchQueue.main.async { completion(nil) }
               return
           }
           let wrapper = try? JSONDecoder().decode(CharacterInfoModel.self, from: data)
           DispatchQueue.main.async { completion(wrapper) }
       }
       task.resume()
   }
}
 
    
func loadCharactersForPage(page: Int, withCompletion completion: @escaping (CharacterInfoModel?) -> Void) {
  if let url = URL(string: "https://rickandmortyapi.com/api/character/?page=\(page)"){
    let task = URLSession.shared.dataTask(with: url) { (data, _, _) -> Void in
           guard let data = data else {
               DispatchQueue.main.async { completion(nil) }
               return
           }
           let wrapper = try? JSONDecoder().decode(CharacterInfoModel.self, from: data)
           DispatchQueue.main.async { completion(wrapper) }
       }
       task.resume()
   }
}
    
func loadSingleCharacter(character: Int, withCompletion completion: @escaping (CharacterModel?) -> Void) {
  if let url = URL(string: "https://rickandmortyapi.com/api/character/\(character)"){
    let task = URLSession.shared.dataTask(with: url) { (data, _, _) -> Void in
           guard let data = data else {
               DispatchQueue.main.async { completion(nil) }
               return
           }
           let wrapper = try? JSONDecoder().decode(CharacterModel.self, from: data)
           DispatchQueue.main.async { completion(wrapper) }
       }
       task.resume()
   }
}
    
    
    
}
