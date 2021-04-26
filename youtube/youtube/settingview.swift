//
//  settingview.swift
//  youtube
//
//  Created by Albab on 26/04/21.
//

import SwiftUI

struct settingview: View {
    var body: some View {
        NavigationView{
            Form{

                Section(){
                    
                    HStack{
                        Image("pepsiman")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        
                        
                        VStack(alignment:.leading){
                            Text("Pepsiman")
                                .font(.headline)
                            Text("A Legend")
                                .font(.caption)
                            
                        }
                    }
                    .padding(.top,10)
                    .padding(.bottom,10)
                    Section(header:Text("Settings")){
                        HStack{
                            Image(systemName: "person")
                                .frame(width:35, height:35)
                                .foregroundColor(.black)
                            
                            Text("Account")
                                                        
                        }
                        HStack{
                            Image(systemName: "photo.fill")
                                .frame(width:35, height:35)
                            Text("Appearance")
                                
                        }
                        HStack{
                            Image(systemName: "calendar")
                                .frame(width:35, height:35)
                            Text("Date & Time ")
                                
                        }
                        HStack{
                            Image(systemName: "return")
                                .frame(width:35, height:35)
                            Text("Log Out")
                                
                        }
                        
                    }
                    
                    Spacer()
                    
                    Section(header: Text("Your Data")){
                        HStack{
                            Image(systemName: "heart")
                                .frame(width:35, height:35)
                                .background(Color.red)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            Text("Favourites")
                           
                        }
                        HStack{
                                Image(systemName: "clock")
                                    .frame(width:35, height:35)
                                    .background(Color.blue)
                                    .cornerRadius(10)
                                    .foregroundColor(.white)
                                Text("History")
                            }
                        HStack{
                                Image(systemName: "icloud.and.arrow.down")
                                    .frame(width:35, height:35)
                                    .background(Color.yellow)
                                    .cornerRadius(10)
                                    .foregroundColor(.white)
                                Text("Downloaded")
                        }
                        
                        HStack{
                                Image(systemName: "play.fill")
                                    .frame(width:35, height:35)
                                    .background(Color.green)
                                    .cornerRadius(10)
                                    .foregroundColor(.white)
                                Text("Your Videos")
                        }
                    }
                    Spacer()
                    Section(header:Text("Playlist")){
                        HStack{
                            Image(systemName: "plus")
                                .frame(width: 35, height: 35)
                                .background(Color.gray)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            Text("New Playlist")
                        }
                }
                }
            .navigationBarTitle("Your Profile")
                }
        }
           
        }
        
        
}


struct settingview_Previews: PreviewProvider {
    static var previews: some View {
        settingview()
    }
}
