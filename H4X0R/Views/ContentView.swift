//
//  ContentView.swift
//  H4X0R
//
//  Created by Chetan Dhowlaghar on 5/5/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationTitle("H4X0R News")
        }
        
        .onAppear {
            networkManager.fetchData()
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




//let posts = [
//    Post(id: 0, title: "daef"),
//    Post(id: 1, title: "daefef"),
//    Post(id: 2, title: "daeef"),
//]
//
//struct TableViewElement: View {
//    var n: Int
//    var body: some View {
//        HStack{
//            Text(String(posts[n].id))
//            Text(posts[n].title)
//        }
//    }
//}
