//
//  movieAPPbyGhadaApp.swift
//  movieAPPbyGhada
//
//  Created by Ghada al ajmi on 30/07/1446 AH.
//

import SwiftUI

@main
struct MovieApp: App {
    @StateObject private var savedMoviesVM = SavedMoviesViewModel()

    var body: some Scene {
        WindowGroup {
            SignInView()
                .environmentObject(savedMoviesVM) // Inject the saved movies view model
        }
    }
}
