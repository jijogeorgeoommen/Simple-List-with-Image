//
//  ContentView.swift
//  List_with_imageView
//
//  Created by Jijo G Oommen on 08/10/22.
//


import SwiftUI

struct AvengersMovieOrder : Identifiable {
    var id = UUID()
    let name : String
    let moviePoster : String
}

struct ContentView: View {
    
    let orderArray = [AvengersMovieOrder(name: "Captain America: The First Avenger", moviePoster: String("CpAm_1") ), AvengersMovieOrder(name: "Captain Marvel", moviePoster: String("CpMar_1")),AvengersMovieOrder(name: "Iron Man", moviePoster: String("IronMan_1")), AvengersMovieOrder(name: "The Incredible Hulk", moviePoster: String("Hulk_1")), AvengersMovieOrder(name: "Iron Man 2", moviePoster: String("IronMan_2")),AvengersMovieOrder(name: "Thor", moviePoster: "Thor_1"), AvengersMovieOrder(name: "Avengers", moviePoster: "Avengers_1"),AvengersMovieOrder(name: "Thor: The Dark World", moviePoster: "Thor_Drk_wrld"), AvengersMovieOrder(name: "Iron Man 3", moviePoster: "IronMan_3"), AvengersMovieOrder(name: "Captain America: The Winter Soldier", moviePoster: "CpAm_2"),AvengersMovieOrder(name: "Guardians of the Galaxy", moviePoster: "GoG_1"), AvengersMovieOrder(name:  "Guardians of the Galaxy Vol. 2", moviePoster: "GoG_2"),AvengersMovieOrder(name: "Avengers: Age of Ultron", moviePoster: "Avengers_2"), AvengersMovieOrder(name: "Ant-Man", moviePoster: "AntMan_1"), AvengersMovieOrder(name: "Captain America: Civil War", moviePoster: "CpAm_3"),AvengersMovieOrder(name: "Black Panther", moviePoster: "Bp_1"),AvengersMovieOrder(name: "Spider-Man:Homecoming", moviePoster: "Sp_Hc"), AvengersMovieOrder(name: "Black Widow", moviePoster: "Bw_1"),AvengersMovieOrder(name: "Doctor Strange", moviePoster: "Ds_1"), AvengersMovieOrder(name: "Thor:Ragnarok", moviePoster: "Thor_Rag"), AvengersMovieOrder(name: "Ant-Man and the Wasp", moviePoster: "Antman_2"),AvengersMovieOrder(name: "Avengers:Infinity War", moviePoster: "Angers_3"), AvengersMovieOrder(name:  "Avengers:Endgame", moviePoster: "Avng_3"),AvengersMovieOrder(name: "Shang-Chi and the Legend of the Ten Rings", moviePoster: "Sanchi_1"), AvengersMovieOrder(name: "Spider-Man: Far From Home", moviePoster: "Sp_2"), AvengersMovieOrder(name: "Eternals", moviePoster: "eternals_1"), AvengersMovieOrder(name: "Spider-Man: No Way Home", moviePoster: "sp_nwh"),AvengersMovieOrder(name: "Doctor Strange in the Multiverse of Madness", moviePoster: "Ds_mom"), AvengersMovieOrder(name: "Thor: Love and Thunder", moviePoster: "Thor_lt")]
    
    var body: some View {
        VStack {
            Text("Marvel movies in chronological order").font(.subheadline).bold()
            List(orderArray) { movie in
                HStack {
                    
                    Image(movie.moviePoster).resizable().aspectRatio(contentMode: .fit).frame(width: 60, height: 90)
                   // Text("\(movie.name)")
                    VStack(alignment: .leading) {
                        Text("\(movie.name)").font(.system(size: 15, weight: .semibold, design: .rounded))
                        Text("Marvel Studio").font(.system(size: 12, weight: .light, design: .default)).foregroundColor(.gray)
                    }
                }
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
