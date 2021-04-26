//
//  ContentView.swift
//  youtube
//
//  Created by Albab on 28/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView{
                Home()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                        
                    }
                
                Home()
                    .tabItem {
                        Image(systemName: "paperplane")
                        Text("Explore")
                    }
                
                Home()
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView()
            ContentView()
        }
    }
}

struct Home: View {
    var body: some View{
        NavigationView{
            
            Content()
                
                .navigationBarItems(
                    
                    leading:
                        HStack{
                            Button(action: {print( "hello button")}){
                                Image("Youtube Logo")
                                    .renderingMode(.original
                                    )
                                    .resizable()
                                    .frame(width:130, height: 40)
                            }
                        },
                    
                    trailing:
                        HStack(spacing:10){
                            Button(action: {print( "hello button")}){
                                
                            }
                            Image(systemName: "envelope")
                                .foregroundColor(.gray)
                            
                            Button(action: {print( "hello button")}){
                                
                            }
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                            
                            Button(action: {}){
                                NavigationLink(destination:Home ()){
                                    Image("pepsiman")
                                        .renderingMode(.original)
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .clipShape(Circle())
                                    
                                }
                            }
                        }
                )
                .navigationBarTitle("",displayMode: .inline )
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
}
struct Content: View {
    var body: some View{
        List{
            
            CellContent(imageContent:"kokbisa_bola",profileContent: "kok_bisa ",Judul: "Kenapa Sepak Bola Olahraga Yang paling Populer?", deskripsi: "Kok Bisa? · 1T x ditonton · 1 detik yang lalu", durasi: "13.45")
            
            CellContent(imageContent:"kokbisa_kesehatan",profileContent: "kok_bisa ",Judul: "Gimana Cara Obat Dibuat?", deskripsi: "Kok Bisa? · 1T x ditonton · 60 detik yang lalu", durasi: "14.15")
            
            CellContent(imageContent:"kokbisa_kimia",profileContent: "kok_bisa ",Judul: "Apa Itu Kimia?", deskripsi: "Kok Bisa? · 1T x ditonton · 45 detik yang lalu", durasi: "15.15")
        }
    }
}

struct CellContent: View {
    
    var imageContent = String()
    var profileContent = String()
    var Judul = String()
    var deskripsi = String()
    var durasi = String()
    
    var body: some View{
        VStack{
            ZStack (alignment: .bottomTrailing){
                Image(imageContent)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                Text(durasi)
                    .padding(4)
                    .foregroundColor(Color.white)
                    .font(.caption)
                    .background(Color.black)
                    .cornerRadius(3)
                    .padding(.trailing, 5)
                    .padding(.bottom, 5)
            }
            
            HStack{
                Image(profileContent)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                VStack(alignment: .leading){
                    Text(Judul)
                        .font(.headline)
                    HStack{
                        Text(deskripsi)
                            .font(.caption)
                    }
                }
                Spacer()
                Image(systemName: "list.bullet")
            }
            
        }
        
    }
}
          



