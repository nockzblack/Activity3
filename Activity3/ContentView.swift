//
//  ContentView.swift
//  Activity3
//
//  Created by Fernando's Mac on 04/04/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack {
            Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            
            Header()
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
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
                                     
                Text("User")
                    .font(.system(size: 28, weight: .bold, design: .serif))
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
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



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
