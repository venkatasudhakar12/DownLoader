import SwiftUI

struct ContentView: View {
    @State private var progress:Double = 0.0
    var body: some View {
    
        VStack{
            ZStack {
                
                Circle()
                    .stroke(lineWidth: 14)
                    .opacity(0.2)
                    .foregroundColor(.red)
                
                Text("\(Int(min(self.progress, 1)*100))%")
                    .font(.system(size: 80))
                
                Circle()
                    .trim(from: 0.0, to: CGFloat(self.progress))
                    .stroke(style: StrokeStyle(lineWidth: 14.0, lineCap: .round, lineJoin: .round))
                    .animation(Animation.linear(duration: 2.0))
                    .foregroundColor(.red)
                .rotationEffect(Angle(degrees: -90))
            }.padding()
            Button(action: {
                Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                    self.progress += 0.1
                    if self.progress >= 1 {
                        timer.invalidate()
                    }
                }
                self.progress = 1.0
                //
            }) {
                Text("download")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
            }
            .padding()
            .cornerRadius(10)
            .background(Color.red)
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
