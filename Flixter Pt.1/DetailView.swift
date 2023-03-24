//
//  DetailView.swift
//  Flixter Pt.1
//
//  Created by Derrick on 3/22/23.
//

import SwiftUI

struct DetailView: View {
    let movies: Movie
    var body: some View {
        GeometryReader { geometry in
        VStack {
            AsyncImage(url: movies.backdropImage){image in
                image
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.width * 0.58)
                //                    .scaledToFill()
                //                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Color.gray
            }
            //                .frame(width: 100, height: 150)
            Text(movies.title)
            HStack {
                VStack {
                    Text("\(movies.voteAverage) Vote Average")
                    Text("\(movies.voteCount) Votes")
                }
                Text("\(movies.popularity) Popularity")
            }
            Text(movies.description)
        }
    }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(movies: Movie(title:"MEG3AN", posterImage: URL(string:posterBase+"/d9nBoowhjiiYc4FBNtQkPY7c11H.jpg")!,
                                  description: "A brilliant toy company roboticist uses artificial intelligence to develop M3GAN, a life-like doll programmed to emotionally bond with her newly orphaned niece. But when the doll's programming works too well, she becomes overprotective of her new friend with terrifying results.",
                                  backdropImage: URL(string:backdropBase+"/q2fY4kMXKoGv4CQf310MCxpXlRI.jpg")!,
                                  voteAverage: 7.5,
                                  voteCount: 1822,
                                  popularity: 1103.359))
    }
}
