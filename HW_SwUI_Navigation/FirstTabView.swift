//
//  FirstTabView.swift
//  HW_SwUI_Navigation
//
//  Created by Анастасия Шалухо on 27.06.22.
//

import SwiftUI

struct FirstTabView: View {
    let albums = ["Octavarium", "The Astonishing", "Distance Over Time"]
    var body: some View {
        NavigationView{
            List(albums, id: \.self) {album in
                NavigationLink(
                    destination: Text("Hi")
//                        AlbumDetails(album: album)
                ){
                        Text(album)
                    }
                    .navigationBarTitle("Альбомы")
            }
        }
    }
}

struct AlbumDetails: View {
  let album: String
  var body: some View {
    Text(album)
          .navigationBarTitle(Text(album), displayMode: .inline)
  }
}

//struct AlbumInformation{
//    let artist: String
//    let alumName: String
//    let genre: String
//    let year: String
//    let songs: String
//}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView()
    }
}
