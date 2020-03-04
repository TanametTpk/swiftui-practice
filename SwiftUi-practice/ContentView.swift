//
//  ContentView.swift
//  SwiftUi-practice
//
//  Created by Tanamet Tanasinpatcharakul on 4/3/2563 BE.
//  Copyright © 2563 Tanamet Tanasinpatcharakul. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var counter:Int = 0
    
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .edgesIgnoringSafeArea(.all)
                .foregroundColor(Color(red:230/255, green:230/255, blue:238/255))
            
            VStack {
                
                HStack{
                    RoundedRectangle(cornerRadius:50)
                    .foregroundColor(Color(red:230/255, green:230/255, blue:238/255))
                    .shadow(color: Color(white: 0, opacity: 0.16), radius: 9, x:9, y:9)
                    .shadow(color: Color(white: 1, opacity: 0.69), radius: 9, x:-9, y:-9)
                    .overlay(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(Color(red:230/255, green:230/255, blue:238/255), lineWidth: 20)
                            .shadow(color: Color(white: 0, opacity: 0.16), radius: 9, x: 9, y: 9)
                            .clipShape(RoundedRectangle(cornerRadius: 50))
                            .shadow(color: Color.white, radius: 9, x: -9, y: -9)
                            .clipShape(RoundedRectangle(cornerRadius: 50))
                    )
                    .padding()
                    .aspectRatio(contentMode: .fit)
                }
                
                Spacer()
                
                Button(action: {
                    self.counter += 1
                }) {
                    
                    Text(String(self.counter))
                        .frame(width: 100, height: 100)
                        .background(Color(red:230/255, green:230/255, blue:238/255))
                        .cornerRadius(50)
                        .shadow(color: Color(white: 0, opacity: 0.16), radius: 9, x:9, y:9)
                        .shadow(color: Color(white: 1, opacity: 0.69), radius: 9, x:-9, y:-9)
                    
                }
                
                Spacer()
                
                Button(action: {
                    self.counter += 1
                }) {
                    
                    Text("ClickMe")
                    .padding(.horizontal, 50)
                    .padding(.vertical)
                    .background(Color(red:230/255, green:230/255, blue:238/255))
                    .cornerRadius(50)
                    .shadow(color: Color(white: 0, opacity: 0.16), radius: 9, x:9, y:9)
                    .shadow(color: Color(white: 1, opacity: 0.69), radius: 9, x:-9, y:-9)
                    
                }
                
                Spacer()
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
