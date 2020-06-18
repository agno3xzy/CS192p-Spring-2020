    //
    //  ContentView.swift
    //  Memorize
    //
    //  Created by agno3 on 2020/6/18.
    //  Copyright © 2020 CS193p ZhiyiXiao. All rights reserved.
    //
    
    import SwiftUI
    
    struct ContentView: View  {
        var body: some View {
            HStack{
                ForEach(0..<4) { index in
                    CardView()
                }
            }
            .padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
        }
    }
    
    
    struct CardView: View{
        var isFaceUp: Bool = false;
        
        var body: some View{
            ZStack{
                if isFaceUp{
                    RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                    RoundedRectangle(cornerRadius: 10.0).stroke()
                    Text("👻" )
                }else{
                    RoundedRectangle(cornerRadius: 10.0).fill()
                }
                
                
            }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
