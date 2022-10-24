
//Temprory file for backup
//
//  ContentView.swift
//  Lightning
//
//  Created by Alok Sagar on 21/10/22.
//

/*
import SwiftUI

struct ContentView: View {
    @State var opa:Double = 0.0
    @State var randomX : CGFloat = 0
    @State  var randomXTemp  : CGFloat = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
   
    
    var body: some View {
        ZStack {
           // Text("OP \(opa) ").foregroundColor(.yellow)
//            lightning(startPoint: CGPoint.zero,endPoint: CGPoint.init(x: UIScreen.main.bounds.maxX, y: UIScreen.main.bounds.maxY))
//                .opacity(Double(opa))
//                .foregroundColor(.white)
            lightning(startPoint: CGPoint(x: randomXTemp, y: 0),endPoint: CGPoint.init(x: UIScreen.main.bounds.maxX, y: UIScreen.main.bounds.maxY))
                .opacity(Double(opa))
                .foregroundColor(.white)
                .shadow(color: .white, radius: 5)
                .shadow(color: .white, radius: 5)
                .shadow(color: .white, radius: 5)
                .animation(.easeInOut(duration: 0.8), value: randomXTemp)
                .animation(.easeInOut(duration: 0.2), value: opa)
                
            Rectangle().foregroundColor(.white).blinking(duration: 0.2)
            Rectangle().foregroundColor(.white).blinking(duration: 0.2)
            Rectangle().foregroundColor(.white).blinking(duration: 0.2)
                .opacity(opa)
            
                
        }
        .frame(width: UIScreen.main.bounds.width,height: UIScreen.main.bounds.height)
        .background(.black)
        
      
        .padding()
        .onReceive(timer) { value in
            if opa != 1 {
                randomXTemp = CGFloat.random(in: 0...UIScreen.main.bounds.maxX)
            }
            
            opa = opa == 1 ? 0 : 1
        }
        
       
            //opa = 1
            //self.randomXTemp =  CGFloat.random(in: 0...UIScreen.main.bounds.maxX)
           // randomX = randomXTemp
            
//                            progress -= 0.1
//                            count -= 1
//                            if progress <= 0.0 || count <= 0 {
//                                timer.upstream.connect().cancel()
//                            }
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
        
       

      
        

       
        
      
//
//        path.addLine(to: CGPoint(x: startPoint.x+width, y: endPoint.y))

        

        path.closeSubpath()
        return path
    }
    
    
}




///Original

struct lightning2:Shape {
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
    
    
}

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
//
//        path.addLine(to: CGPoint(x: startPoint.x+width, y: endPoint.y))

        

        path.closeSubpath()
        


        return path

        
    }

}


struct BlinkViewModifier: ViewModifier {
    
    let duration: Double
    @State private var blinking: Bool = false
    
    func body(content: Content) -> some View {
        content
            .opacity(blinking ? 0 : 1)
            .animation(.easeOut(duration: duration).repeatForever())
            .onAppear {
                withAnimation {
                    blinking = true
                }
            }
    }
}

extension View {
    func blinking(duration: Double = 0.75) -> some View {
        modifier(BlinkViewModifier(duration: duration))
    }
}
*/
