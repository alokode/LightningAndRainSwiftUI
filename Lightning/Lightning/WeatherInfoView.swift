//
//  WeatherInfoView.swift
//  Lightning
//
//  Created by Alok Sagar on 24/10/22.
//

import SwiftUI

struct WeatherInfoView: View {
    var textColor:Color = .white
    @State var animateDrop = false
    @State var paddingValueBottom = 0
    @State var paddingValueLeading = 0
    var dropAnimation:Animation = .linear(duration: 0.2)
    var body: some View {
        VStack(alignment:.center,spacing: 0){

            VStack(alignment:.center) {
                Text("Bengalure").font(.system(size: 36))
                    .padding(EdgeInsets.init(top: 0, leading: 10, bottom: 0, trailing: 10))
                    .foregroundColor(textColor)
                
                Text("21ºC").font(.system(size: 50))
                    .padding(EdgeInsets.init(top: 0, leading: 10, bottom: 1, trailing: 10))
                    .foregroundColor(textColor)
                Text("Lightning").font(.system(size: 28)).padding(EdgeInsets.init(top: 0, leading: 10, bottom: 10, trailing: 10))
                    .foregroundColor(textColor)
                Text("Cloudy condition expected around 12 PM").font(.system(size: 18))
                    .foregroundColor(textColor)
                    .padding(EdgeInsets.init(top: 0, leading: 10, bottom: 10, trailing: 10))
            
            }
            .padding(0)
            .clipShape(RoundedRectangle(cornerRadius: 10)) // clip corners
                    .background(
                            RoundedRectangle(cornerRadius: 10) // stroke border
                                .stroke(Color.white.opacity(0.3), lineWidth: 1)
                        )
                    

        }
        .onAppear {
            withAnimation(.linear.repeatForever()) {
                paddingValueBottom = 10
                paddingValueLeading = -10
            }
            
        }
    }
}

struct WeatherInfoView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherInfoView().background(.yellow)
    }
}
