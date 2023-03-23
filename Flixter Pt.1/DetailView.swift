//
//  DetailView.swift
//  Flixter Pt.1
//
//  Created by Derrick on 3/22/23.
//

import SwiftUI

struct DetailView: View {
    let movie: [Movie] = Movie.mockMovies
    var body: some View {
        VStack {
            ForEach(movie) { movie in
                /*@START_MENU_TOKEN@*/Text(movie.title)/*@END_MENU_TOKEN@*/
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
