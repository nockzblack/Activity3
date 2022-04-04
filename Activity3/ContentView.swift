//
//  ContentView.swift
//  Activity3
//
//  Created by Fernando's Mac on 04/04/22.
//

import SwiftUI

let myUIColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)

struct ContentView: View {
    
    
    
    var body: some View {
        
        VStack {
            Color(.white)
                .edgesIgnoringSafeArea(.all)
            
            Header()
            Search()
                .padding(.top, 10)
            Buttons()
                .padding(.vertical, 20)
            Cards()
                .padding(.top, 20)
            Footer()
                .offset(y:48)
            

        }
        
        
              
    }
}

// MARK: Header
struct Header: View {
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Good Morning, ")
                    .font(.system(size: 19, weight: .medium, design: .serif))
                    .foregroundColor(Color(myUIColor))
                                     
                Text("User")
                    .font(.system(size: 28, weight: .bold, design: .serif))
                    .foregroundColor(Color(myUIColor))
                    .padding(.top, 5)
                                     
            }
            .padding(.leading, 30)
            Spacer()
            Image("loggeduser")
                .resizable()
                .frame(width: 50, height: 50)
                .padding(.trailing, 30)
        }
    }
}

// MARK: Search
struct Search: View {
    @State var searchCriteria: String = ""
    
    var body: some View {
        HStack {
            TextField("Search for tech and other things", text: $searchCriteria)
                .foregroundColor(.gray)
                .font(.system(size: 15))
                .padding(.leading, 20)
            Spacer()
            Image(systemName: "magnifyingglass")
                .font(.system(size: 26, weight: .medium, design: .serif))
                .foregroundColor(Color(myUIColor))
                .padding(.trailing, 20)
        }
        .frame(width: 350, height: 54)
        .background(.white)
        .cornerRadius(14)
    }
}

// MARK: Cards
struct Cards: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Featured items")
                .font(.system(size: 22, weight: .bold, design: .serif))
                .foregroundColor(Color(myUIColor))
            
            ScrollView(.horizontal) {
                HStack(spacing: 40) {
                    VStack {
                        Image("mexican_wolf")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        VStack(alignment: .leading) {
                            Text("Mexican Wolf")
                                .font(.system(size: 20, weight: .bold, design: .serif))
                                .foregroundColor(Color(myUIColor))
                                .padding(.horizontal, 10)
                            Text("Read the most relevant papers")
                                .font(.system(size: 15, weight: .medium, design: .serif))
                                .foregroundColor(Color(myUIColor))
                                .lineLimit(3)
                                .padding(.top, 5)
                                .padding(.leading, 10)
                                .padding(.bottom, 15)
                        }
                        .frame(height:100)
                    }
                    .frame(width: 280, height: 340)
                    .background(.white)
                    .cornerRadius(30)
                    
                    VStack {
                        Image("tiger")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        VStack(alignment: .leading) {
                            Text("Siberian Tiger")
                                .font(.system(size: 20, weight: .bold, design: .serif))
                                .foregroundColor(Color(myUIColor))
                                .padding(.horizontal, 10)
                            Text("Read the most relevant papers")
                                .font(.system(size: 15, weight: .medium, design: .serif))
                                .foregroundColor(Color(myUIColor))
                                .lineLimit(3)
                                .padding(.top, 5)
                                .padding(.leading, 10)
                                .padding(.bottom, 15)
                        }
                        .frame(height:100)
                    }
                    .frame(width: 280, height: 340)
                    .background(.white)
                    .cornerRadius(30)
                }
            }
            .padding(.top, 12)
        }
        .padding(.leading, 30)
        .padding(.top, 10)
    }
}


// MARK: Footer
struct Footer: View {
    var body: some View {
        HStack(spacing: 60) {
            VStack {
                Image(systemName: "house")
                    .font(.system(size: 26))
                    .foregroundColor(.white)
                Circle()
                    .frame(width: 6, height: 6)
                    .foregroundColor(.white)
            }
            VStack {
                Image(systemName: "heart")
                    .font(.system(size: 26))
                    .foregroundColor(.white)
  
            }
            VStack {
                Image(systemName: "cube")
                    .font(.system(size: 26))
                    .foregroundColor(.white)

            }
            VStack {
                Image(systemName: "person")
                    .font(.system(size: 26))
                    .foregroundColor(.white)
            }
            
        }
        .frame(height:60)
        .padding(.bottom, 30)
        .frame(maxWidth: .infinity)
        .background(Color(myUIColor))
        .cornerRadius(20)
    }
}

// MARK: Buttons
struct Buttons: View {
    
    var body: some View {
        VStack {
            HStack(spacing:35) {
                VStack {
                    ZStack {
                        Image(systemName: "clock")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                    }
                    .frame(width: 60, height: 60)
                    .background(Color(myUIColor))
                    .cornerRadius(10)
                
                
                Text("Recent")
                    .font(.system(size: 12, weight: .bold, design: .serif))
                    .foregroundColor(Color(myUIColor))
                    .padding(.top, 10)
                }
                VStack {
                    ZStack {
                        Image(systemName: "flame")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                    }
                    .frame(width: 60, height: 60)
                    .background(Color(myUIColor))
                    .cornerRadius(10)
                
                
                Text("Trending")
                    .font(.system(size: 12, weight: .bold, design: .serif))
                    .foregroundColor(Color(myUIColor))
                    .padding(.top, 10)
                }
                VStack {
                    ZStack {
                        Image(systemName: "crown")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                    }
                    .frame(width: 60, height: 60)
                    .background(Color(myUIColor))
                    .cornerRadius(10)
                
                
                Text("Popular")
                    .font(.system(size: 12, weight: .bold, design: .serif))
                    .foregroundColor(Color(myUIColor))
                    .padding(.top, 10)
                }
                VStack {
                    ZStack {
                        Image(systemName: "rhombus")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                    }
                    .frame(width: 60, height: 60)
                    .background(Color(myUIColor))
                    .cornerRadius(10)
                
                
                Text("Premium")
                    .font(.system(size: 12, weight: .bold, design: .serif))
                    .foregroundColor(Color(myUIColor))
                    .padding(.top, 10)
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
