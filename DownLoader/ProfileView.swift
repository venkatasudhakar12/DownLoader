//
//  ProfileView.swift
//  DownLoader
//
//  Created by venkata sudhakar on 23/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
        Image("photo")
            .resizable()
            .scaledToFit()
            .overlay(ImageOverlay(text: Binding.constant("Venkata Sudhakar")), alignment: .center)
        Spacer()
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
struct TextFieldView:View {
    @State var value:String = ""
    var body: some View {
        VStack{
        TextField("Enter Username", text: $value)
            Text("Your name is \(self.value)")
        }.padding()
    }
}

struct TextFieldView_Previews: PreviewProvider{
    static var previews: some View {
        TextFieldView()
    }
}
