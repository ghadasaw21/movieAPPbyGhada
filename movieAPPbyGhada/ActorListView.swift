//
//  ActorListView.swift
//  movieAPPbyGhada
//
//  Created by Ghada al ajmi on 30/07/1446 AH.
//

import SwiftUI

struct ActorListView: View {
    @StateObject private var viewModel = ActorViewModel()

    var body: some View {
        NavigationView {
            if viewModel.actors.isEmpty {
                Text("Loading actors...")
                    .onAppear {
                        viewModel.loadActors()
                    }
            } else {
                List(viewModel.actors, id: \.name) { actor in
                    VStack(alignment: .leading) {
                        Text(actor.name).font(.headline)
                        if let age = actor.age {
                            Text("Age: \(age)").font(.subheadline)
                        }
                        if let movies = actor.movies {
                            ForEach(movies, id: \.self) { movieID in
                                Text("Movie ID: \(movieID)").font(.caption)
                            }
                        }
                    }
                }
                .navigationTitle("Actors")
            }
        }
    }
}
