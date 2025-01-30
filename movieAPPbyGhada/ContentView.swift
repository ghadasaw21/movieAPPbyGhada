//
//  ContentView.swift
//  movieAPPbyGhada
//
//  Created by Ghada al ajmi on 30/07/1446 AH.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var movieViewModel = MovieViewModel()

    var body: some View {
        NavigationView {
            List {
                // Movies Section
                Section(header: Text("Movies")) {
                    if movieViewModel.movies.isEmpty {
                        Text("Loading movies...")
                            .onAppear {
                                movieViewModel.loadMovies()
                            }
                    } else {
                        ForEach(movieViewModel.movies, id: \.name) { movie in
                            VStack(alignment: .leading) {
                                Text(movie.name).font(.headline)
                                Text(movie.story).font(.subheadline)
                            }
                        }
                    }
                }
                
                // Future Placeholder for Other Sections
                Section(header: Text("Other Sections")) {
                    Text("Actors Section (Coming Soon)")
                    Text("Directors Section (Coming Soon)")
                }
            }
            .navigationTitle("Dashboard")
        }
    }
}
