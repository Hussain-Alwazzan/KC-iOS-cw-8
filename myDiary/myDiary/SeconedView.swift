//
//  SeconedView.swift
//  myDiary
//
//  Created by Hussain Alwazzan on 20/08/2022.
//

import SwiftUI

struct SeconedView: View {
    let myN : Color
    let myH : String
    var body: some View {
        ZStack{
            
            myN.ignoresSafeArea()
            
            VStack{
                Text(myH)
            }
        }
        
        
        
        
        
    }
}

struct SeconedView_Previews: PreviewProvider {
    static var previews: some View {
        SeconedView(myN: Color.blue, myH: "Hi")
    }
}
