//
//  ContentView.swift
//  myDiary
//
//  Created by Hussain Alwazzan on 20/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var myText = ""
    let color = [Color.blue.opacity(0.4),
                 Color.green.opacity(0.4),
                 Color.indigo.opacity(0.4),
                 Color.orange.opacity(0.4)]
    @State var selected : Color = Color.indigo
    var body: some View {
        
        NavigationView{
            ZStack{
             
                Color.gray.opacity(0.4)
                    .ignoresSafeArea()
                VStack{
                    Text("اختر اللون المفضل")
                        .font(.system(size:22 ))
                    
                    HStack {
                        ForEach(color, id:\.self){
                            color in
                            
                            Circle()
                                .fill(color)
                                .frame(width: 85, height: 60)
                                .onTapGesture {
                                    selected = color
                                    
                                }
                      }
                        
                        
                    }
                    Text("ماذا تريد ان لك")
                    
                    TextField("اكتب هنا" , text: $myText)
                        .background()
                        .cornerRadius(10)
                        .padding()
                   
                    NavigationLink(destination: SeconedView(myN: selected, myH: myText)) {
                        Text("حفظ")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .frame(width: 200, height: 50)
                            .background(.green)
                            .cornerRadius(10)
                    }
                 
                    
                }
       
        
            }.navigationTitle("دفتر اليوميات📒")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
