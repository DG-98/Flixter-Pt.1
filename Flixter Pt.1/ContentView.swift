//
//  ContentView.swift
//  Flixter Pt.1
//
//  Created by Derrick on 3/22/23.
//

import SwiftUI

struct ContentView: View {
    let movie: [Movie] = Movie.mockMovies
//        let movie: Movie
    var body: some View {
        NavigationView {
            VStack {
            List(movie) { movie in
//                ForEach(Movie) {movies in
                    NavigationLink(destination: DetailView()) {
                        /*@START_MENU_TOKEN@*/Text(movie.title)/*@END_MENU_TOKEN@*/
                        Text(movie.description)
                    }
//                }
            }
        }
        .navigationTitle("Movies")
        .padding()
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
