//
//  LightningView.swift
//  Lightning
//
//  Created by Alok Sagar on 24/10/22.
//

import SwiftUI

struct LightningView: View {
    
    @Binding var opa:Double
    @State var randomX : CGFloat = 0
    @State  var randomXTemp  : CGFloat = 0
    @State var time = 0
   
    let timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
   
    
    var body: some View {
        
        GeometryReader { ctx in
            ZStack {
                lightning(startPoint: CGPoint(x: randomXTemp, y: 0),endPoint: CGPoint.init(x: UIScreen.main.bounds.maxX, y: UIScreen.main.bounds.maxY))
                    .opacity(Double(opa))
                    .foregroundColor(.white)
                    .shadow(color: .white, radius: 5)
                    .shadow(color: .white, radius: 5)
                    .animation(.easeInOut(duration: 0.8), value: randomXTemp)
                    .animation(.easeInOut(duration: 0.2), value: opa)
                    .onReceive(timer) { value in
                        time += 1
                       // if time % 100 == 0 {
                            if opa != 1 {
                               randomXTemp = CGFloat.random(in: 0...UIScreen.main.bounds.maxX)
                            }
                            
                            opa = opa == 1 ? 0 : 1
                       // }
                     
                    //    rainDropPos = CGPoint(x: UIScreen.main.bounds.maxX, y: UIScreen.main.bounds.maxY)
                    }
                
                    .opacity(opa)
                
            }
        }

        
    }
}

struct LightningView_Previews: PreviewProvider {
    
    static var previews: some View {
        Spacer()
     //   LightningView(opa: 0)
    }
}
