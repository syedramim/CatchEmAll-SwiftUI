//
//  CreaturesViewModel.swift
//  CatchEmAll
//
//  Created by Kaneis Zontanos on 3/12/23.
//

import Foundation

@MainActor
class CreaturesViewModel: ObservableObject {
    
    private struct Returned: Codable {
        var count: Int
        var next: String?
        var results: [Creature]
    }
    
    
    @Published var urlString = "https://pokeapi.co/api/v2/pokemon/"
    @Published var count = 0
    @Published var creaturesArray: [Creature] = []
    @Published var isLoading = false
    
    func getData() async {
        print("🕸 We are accessing the url \(urlString)")
        isLoading = true
        
        guard let url = URL(string: urlString) else {
            print("😡 ERROR: Could not create a URL from \(urlString)")
            isLoading = false
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            guard let returned = try? JSONDecoder().decode(Returned.self, from: data) else {
                print("😡 JSON ERROR: Could not decode returned JSON data")
                isLoading = false
                return
            }
            self.count = returned.count
            self.urlString = returned.next ?? ""
            self.creaturesArray += returned.results
            isLoading = false
        } catch {
            print("😡 ERROR: Could not user URL at \(urlString) to get data and response")
            isLoading = false
        }
    }
    
    func loadNextIfNeeded(creature: Creature) async {
        guard let lastCreature = creaturesArray.last else {return}
        
        if  creature.id == lastCreature.id && urlString.hasPrefix("http") {
            Task {
                await getData()
            }
        }
        
    }
    
    
    func loadAll() async {
        guard urlString.hasPrefix("http") else {return}
        
        await getData()
        await loadAll()
    }
    
}
