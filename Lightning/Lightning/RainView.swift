//
//  RainView.swift
//  Lightning
//
//  Created by Alok Sagar on 24/10/22.
//

import SwiftUI

struct RainView: View {
    @State  var rainDropPos  : CGPoint = .zero
    
    var animation:Animation = .linear(duration: 0.3)
    var body: some View {
        GeometryReader { ctx in
            ZStack {
                //Outer horizontal stack
                HStack(spacing: 1) {
                    ForEach((1...10), id: \.self) {index in
                        //Vertical stack of  rain drop
                        VStack(alignment:.leading,spacing: 90) {
                            ForEach((1...15).reversed(), id: \.self) {index2 in
                                //Raindrop using capsule
                                Capsule().frame(width: 3,height: 10).foregroundStyle(.linearGradient(.init(colors: [.gray,.white]), startPoint: .zero, endPoint: .bottom))
                                    .shadow(color: .black, radius: 2)
                                    .opacity(Double.random(in: 0...1))
                            }
                            .position(rainDropPos)
                            .animation(animation.delay( Double.random(in: 0...Double(index)*0.01) ).repeatForever(autoreverses:false), value: rainDropPos)
                        }
                        
                    }
                    
                    }
                
                .padding(1)

                .onAppear {
                    
                    withAnimation {
                        rainDropPos = CGPoint(x: rainDropPos.x, y: ctx.size.height+300)
                    }
                        
                    }
            }
        }

        
            

    }
}

struct RainView_Previews: PreviewProvider {
    static var previews: some View {
        RainView()
    }
}
