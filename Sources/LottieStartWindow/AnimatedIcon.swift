// The Swift Programming Language

import SwiftUI
import Lottie

@available(iOS 16.0, *)
public struct AnimatedIcon: View {
    
    @Binding var isFinished: Bool
    let name: String
    
    public init(name: String ,isFinished: Binding<Bool>) {
        self._isFinished = isFinished
        self.name = name
    }
    
    public var body: some View {
        
        let animation = LottieAnimation.named(name)
            
        LottieView(animation: animation)
            .playing()
            .animationDidFinish { _ in
                isFinished = true
        }
    }
}
