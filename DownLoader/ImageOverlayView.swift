//
//  ImageOverlayView.swift
//  DownLoader
//
//  Created by venkata sudhakar on 23/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct ImageOverlay: View {
    @Binding var text:String
    var body: some View {
        ZStack{
            Text(text)
                .font(Font.custom("Chalkboard", size: 33))
                .padding(6)
                .foregroundColor(.white)
        }
        .background(Color.black)
        .opacity(0.8)
        .cornerRadius(10)
        .padding(6)
    }
}

struct ImageOverlayView_Previews: PreviewProvider {
    static var previews: some View {
        ImageOverlay(text: Binding.constant("Hello"))
    }
}
