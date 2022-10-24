//
//  ContentView.swift
//  Lightning
//
//  Created by Alok Sagar on 21/10/22.
//

import SwiftUI

struct ContentView: View {
    @State var opa:Double = 0.0
    @State var randomX : CGFloat = 0
    @State  var randomXTemp  : CGFloat = 0
    @State var time = 0
   
    var body: some View {
        GeometryReader { ctx in
            ZStack(alignment:.center) {
               
                LightningView(opa:$opa)
                Rectangle().foregroundColor(.white.opacity(0.3)).blinking(duration: 0.2).opacity(opa)
                    .frame(width: ctx.size.width ,height: ctx.size.height+200)
               
                RainView()
                RainView().position(x:150,y:300)
                WeatherInfoView()
                    .background(.gray.opacity(0.6))
                    
            }
            .frame(width: ctx.size.width, height:  ctx.size.height)
            .ignoresSafeArea()
            .background(content: {
                CloudsView()
            })
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




struct lightning:Shape {
    var width:CGFloat = 2
    var startPoint:CGPoint = CGPoint.zero
    var endPoint:CGPoint = CGPoint.zero
    func path(in rect: CGRect) -> Path {
        
        var tempStartPoint = startPoint
        var tempEndPoint = startPoint
        var path = Path()
        
        var i:CGFloat = 5
        
        for j in Int(startPoint.x)...Int(endPoint.x) {
        //while tempEndPoint.y < endPoint.y &&  tempEndPoint.x <  endPoint.x {
            
            path.move(to: tempStartPoint)
            var xDeviation = CGFloat.random(in: -12...10)
            tempEndPoint = CGPoint(x: CGFloat(j)+xDeviation, y: tempStartPoint.y+i)
           
            path.addLine(to:tempEndPoint)
            
            path.addLine(to: CGPoint(x: tempEndPoint.x+width, y: tempEndPoint.y))
            
            path.addLine(to: CGPoint(x: tempStartPoint.x+width, y: tempStartPoint.y))
            
            tempStartPoint = tempEndPoint
            i += 0.3
        }
        path.closeSubpath()
        return path
    }
    
    
}




///Original

/*struct lightning2:Shape {
    var width:CGFloat = 2
    var startPoint:CGPoint = CGPoint.zero
    var endPoint:CGPoint = CGPoint.zero
    func path(in rect: CGRect) -> Path {
        
        var tempStartPoint = startPoint
        var tempEndPoint = startPoint
        var path = Path()
        
        var i:CGFloat = 5
        
        while i < endPoint.y {
            
            path.move(to: tempStartPoint)
            var xDeviation = CGFloat.random(in: 0...50)
            tempEndPoint = CGPoint(x: startPoint.x+xDeviation, y: tempStartPoint.y+i)
            
            path.addLine(to:tempEndPoint)
            
            path.addLine(to: CGPoint(x: tempEndPoint.x+width, y: tempEndPoint.y))
            
            path.addLine(to: CGPoint(x: tempStartPoint.x+width, y: tempStartPoint.y))
            
            tempStartPoint = tempEndPoint
            i += 0.3
        }
        
        
        
        
        
        
        
        
        
        //
        //        path.addLine(to: CGPoint(x: startPoint.x+width, y: endPoint.y))
        
        
        
        path.closeSubpath()
        return path
    }
    
    
}*/

//Small width Line to draw lightning
struct Line: Shape{
    var width:CGFloat = 2
    var startPoint:CGPoint = CGPoint.zero
    var endPoint:CGPoint = CGPoint.zero

    func path(in rect: CGRect) -> Path {
      
        var path = Path()

        path.move(to: startPoint)

        path.addLine(to:endPoint)
        
        path.addLine(to: CGPoint(x: endPoint.x+width, y: endPoint.y))
        
        path.addLine(to: CGPoint(x: startPoint.x+width, y: startPoint.y))

        path.closeSubpath()
        


        return path

        
    }

}
