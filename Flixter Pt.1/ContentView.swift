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
                List{
                ForEach(movie) {movie in
                    NavigationLink(destination: DetailView()) {
                        /*@START_MENU_TOKEN@*/Text(movie.title)/*@END_MENU_TOKEN@*/
                            .font(.headline)
                        Text(movie.description.prefix(80) + "...")
                            .font(.subheadline)
//                        Text(movie.posterImage)
                    }
                }
                            }
            }
            .navigationTitle("Movies")
            .navigationBarTitleDisplayMode(.inline)
            .padding()
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
