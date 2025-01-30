//
//  ActionMovieCard.swift
//  movieAPPbyGhada
//
//  Created by Ghada al ajmi on 30/07/1446 AH.
//

import SwiftUI

struct ActionMovieCard: View {
    let movie: MovieFields

    var body: some View {
        NavigationLink(destination: MovieDetailsView(movie: movie)) {
            ZStack {
                AsyncImage(url: URL(string: movie.poster)) { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 208, height: 275)
                        .cornerRadius(10)
                } placeholder: {
                    Rectangle()
                        .fill(Color.gray)
                        .frame(width: 208, height: 275)
                        .cornerRadius(10)
                }
            }
        }
    }
}
