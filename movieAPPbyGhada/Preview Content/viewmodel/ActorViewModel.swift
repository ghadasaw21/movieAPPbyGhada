//
//  ActorViewModel.swift
//  movieAPPbyGhada
//
//  Created by Ghada al ajmi on 30/07/1446 AH.
//

import Foundation

class ActorViewModel: ObservableObject {
    @Published var actors: [ActorFields] = []
    @Published var errorMessage: String?

    func loadActors() {
        fetchActors { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let actors):
                    self?.actors = actors
                case .failure(let error):
                    self?.errorMessage = error.localizedDescription
                }
            }
        }
    }
}
