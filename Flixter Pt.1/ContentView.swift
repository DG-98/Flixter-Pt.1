//
//  ContentView.swift
//  Flixter Pt.1
//
//  Created by Derrick on 3/22/23.
//

import SwiftUI

struct ContentView: View {
    let movie: [Movie] = Movie.mockMovies
    var body: some View {
        NavigationView {
//            VStack {
                List{
                ForEach(movie) {movie in
                    NavigationLink(destination: DetailView(movies: movie)) {
                        HStack {
                            AsyncImage(url: movie.posterImage) {image in
                                image
                                    .resizable()
                            } placeholder: {
                                Color.gray
                            }
                                .frame(width: 100, height: 150, alignment: .trailing)
                            VStack {
                                /*@START_MENU_TOKEN@*/Text(movie.title)/*@END_MENU_TOKEN@*/
                                    .font(.headline)
                                    .frame(alignment: .leading)
                                Text(movie.description.prefix(80) + "...")
                                    .font(.subheadline)
                                    .frame(alignment: .trailing)

                            }
                    }
                        }
//                    }
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
