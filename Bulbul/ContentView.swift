//
//  ContentView.swift
//  Bulbul
//
//  Created by huahua on 2021/3/20.
//

import SwiftUI
struct DrawView: UIViewRepresentable {
    
    
    func drawHead(_ view: UIView){
        //head
        let headPath = UIBezierPath()
        headPath.move(to: CGPoint(x: 83, y: 58))
        headPath.addCurve(to: CGPoint(x: 179, y: 58),
                          controlPoint1: CGPoint(x: 93, y: 48),
                          controlPoint2: CGPoint(x: 142, y: 25))
        headPath.addCurve(to: CGPoint(x: 132, y: 72),
                          controlPoint1: CGPoint(x: 161, y: 67),
                          controlPoint2: CGPoint(x: 144, y: 69))
        headPath.addQuadCurve(to: CGPoint(x: 117, y: 76),
                              controlPoint: CGPoint(x: 123, y: 70))
        headPath.addLine(to: CGPoint(x: 108, y: 80))
        headPath.addLine(to: CGPoint(x: 115, y: 84))
        headPath.addQuadCurve(to: CGPoint(x: 139, y: 88),
                              controlPoint: CGPoint(x: 123, y: 101))
        headPath.addLine(to: CGPoint(x: 165, y: 97))
        headPath.addLine(to: CGPoint(x: 202, y: 111))
        headPath.addQuadCurve(to: CGPoint(x: 201, y: 131),
                              controlPoint: CGPoint(x: 224, y: 131))
        headPath.addQuadCurve(to: CGPoint(x: 168, y: 142),
                              controlPoint: CGPoint(x: 178, y: 150))
        headPath.addCurve(to: CGPoint(x: 92, y: 82),
                          controlPoint1: CGPoint(x: 130, y: 142),
                          controlPoint2: CGPoint(x: 100, y: 103))
        headPath.addQuadCurve(to: CGPoint(x: 66, y: 96),
                              controlPoint: CGPoint(x: 90, y: 59))
        headPath.close()
        
        
        
        let headLayer = CAShapeLayer()
        headLayer.path = headPath.cgPath
        headLayer.fillColor = UIColor.black.cgColor
        headLayer.strokeColor = CGColor(srgbRed: 40/255, green: 35/255, blue: 35/255, alpha: 1.0)
        headLayer.lineWidth = 1
        view.layer.addSublayer(headLayer)
        
        
        //編框動畫
        //        let animation = CABasicAnimation(keyPath: "strokeEnd")
        //        animation.fromValue = 0.1
        //        animation.toValue = 0.8
        //        animation.duration = 5
        //        headLayer.add(animation, forKey: nil)
        
        
        headPath.move(to: CGPoint(x: 175, y: 57))
        
        //headLine
        let headLinePath = UIBezierPath()
        headLinePath.move(to: CGPoint(x: 176, y: 58))
        headLinePath.addCurve(to: CGPoint(x: 202, y: 112),
                              controlPoint1: CGPoint(x: 189, y: 64),
                              controlPoint2: CGPoint(x: 198, y: 103))
        headLinePath.move(to: CGPoint(x: 68, y: 91))
        headLinePath.addQuadCurve(to: CGPoint(x: 57, y: 128),
                                  controlPoint: CGPoint(x: 54, y: 118))
        
        headLinePath.addQuadCurve(to: CGPoint(x: 167, y: 145),
                                  controlPoint: CGPoint(x: 104, y: 162))
        
        let headLineLayer = CAShapeLayer()
        headLineLayer.path = headLinePath.cgPath
        headLineLayer.fillColor = UIColor.white.cgColor
        headLineLayer.lineWidth = 3
        headLineLayer.strokeColor = UIColor.lightGray.cgColor
        view.layer.addSublayer(headLineLayer)
        
        //mouth
        let mouthPath = UIBezierPath()
        mouthPath.move(to: CGPoint(x: 55, y: 58))
        mouthPath.addQuadCurve(to: CGPoint(x: 103, y: 80), controlPoint: CGPoint(x: 99, y: 57))
        mouthPath.close()
        
        mouthPath.move(to: CGPoint(x: 55, y: 59))
        mouthPath.addQuadCurve(to: CGPoint(x: 103, y: 83), controlPoint: CGPoint(x: 83, y: 80))
        mouthPath.close()
        
        let topMouthLayer = CAShapeLayer()
        topMouthLayer.path = mouthPath.cgPath
        topMouthLayer.fillColor = CGColor(srgbRed: 58/255, green: 51/255, blue: 50/255, alpha: 1.0)
        topMouthLayer.strokeColor = CGColor(srgbRed: 40/255, green: 35/255, blue: 35/255, alpha: 1.0)
        topMouthLayer.lineWidth = 3
        view.layer.addSublayer(topMouthLayer)
        
        //blush
        let blushPath = UIBezierPath()
        blushPath.move(to: CGPoint(x: 141, y: 95))
        blushPath.addQuadCurve(to: CGPoint(x: 174, y: 122),
                               controlPoint: CGPoint(x: 174, y: 100))
        
        blushPath.addCurve(to: CGPoint(x: 160, y: 128),
                           controlPoint1: CGPoint(x: 180, y: 113),
                           controlPoint2: CGPoint(x: 170, y: 133))
        blushPath.addCurve(to: CGPoint(x: 141, y: 95),
                           controlPoint1: CGPoint(x: 135, y: 124),
                           controlPoint2: CGPoint(x: 125, y: 95))
        blushPath.close()
        
        let blushLayer = CAShapeLayer()
        blushLayer.path = blushPath.cgPath
        blushLayer.fillColor = CGColor(srgbRed: 215/255, green: 169/255, blue: 133/255, alpha: 1.0)
        view.layer.addSublayer(blushLayer)
        
        //eye
        let eyePath = UIBezierPath()
        eyePath.move(to: CGPoint(x: 120, y: 81))
        eyePath.addQuadCurve(to: CGPoint(x: 137, y: 80),
                             controlPoint: CGPoint(x: 126, y: 71))
        eyePath.addCurve(to: CGPoint(x: 120, y: 81),
                         controlPoint1: CGPoint(x: 132, y: 94),
                         controlPoint2: CGPoint(x: 113, y: 87))
        eyePath.close()
        
        let eyeLayer = CAShapeLayer()
        eyeLayer.path = eyePath.cgPath
        eyeLayer.fillColor = UIColor.black.cgColor
        view.layer.addSublayer(eyeLayer)
    }
    
    
    func drawBody(_ view: UIView){
        //下方胖胖身體
        let bodyBottomPath = UIBezierPath()
        bodyBottomPath.move(to: CGPoint(x: 42, y: 144))
        bodyBottomPath.addQuadCurve(to: CGPoint(x: 15, y: 237),
                                    controlPoint: CGPoint(x: 16, y: 208))
        
        
        bodyBottomPath.addCurve(to: CGPoint(x: 251, y: 233),
                                controlPoint1: CGPoint(x: 74, y: 330),
                                controlPoint2: CGPoint(x: 226, y: 320))
        bodyBottomPath.addQuadCurve(to: CGPoint(x: 239, y: 170),
                                    controlPoint: CGPoint(x: 251, y: 186))
        
        let bodyBottomLayer = CAShapeLayer()
        bodyBottomLayer.path = bodyBottomPath.cgPath
        bodyBottomLayer.fillColor = CGColor(srgbRed: 215/255,
                                            green: 215/255,
                                            blue: 191/255, alpha: 1.0)
        view.layer.addSublayer(bodyBottomLayer)
        
        //胸肌部分
        let bodyPath = UIBezierPath()
        bodyPath.move(to: CGPoint(x: 57, y: 128))
        bodyPath.addLine(to: CGPoint(x: 43, y: 142))
        bodyPath.addQuadCurve(to: CGPoint(x: 74, y: 229),
                              controlPoint: CGPoint(x: 28, y: 187))
        bodyPath.addCurve(to: CGPoint(x: 195, y: 227),
                          controlPoint1: CGPoint(x: 138, y: 230),
                          controlPoint2: CGPoint(x: 176, y: 243))
        bodyPath.addQuadCurve(to: CGPoint(x: 237, y: 172),
                              controlPoint: CGPoint(x: 239, y: 187))
        bodyPath.addCurve(to: CGPoint(x: 212, y: 124),
                          controlPoint1: CGPoint(x: 247, y: 147),
                          controlPoint2: CGPoint(x: 218, y: 123))
        
        let bodyLayer = CAShapeLayer()
        bodyLayer.path = bodyPath.cgPath
        bodyLayer.fillColor = CGColor(srgbRed: 189/255,
                                      green: 189/255,
                                      blue: 141/255, alpha: 1.0)
        view.layer.addSublayer(bodyLayer)
        
    }
    
    func drawWings(_ view:UIView) {
        let wingPath = UIBezierPath()
        wingPath.move(to: CGPoint(x: 42, y: 144))
        wingPath.addCurve(to: CGPoint(x: 15, y: 235),
                          controlPoint1: CGPoint(x: 23, y: 164),
                          controlPoint2: CGPoint(x: 9, y: 201))
        
        wingPath.move(to: CGPoint(x: 234, y: 147))
        wingPath.addCurve(to: CGPoint(x: 252, y: 229),
                          controlPoint1: CGPoint(x: 257, y: 192),
                          controlPoint2: CGPoint(x: 257, y: 229))
        wingPath.addCurve(to: CGPoint(x: 234, y: 147),
                          controlPoint1: CGPoint(x: 248, y: 205),
                          controlPoint2: CGPoint(x: 234, y: 229))
        
        let wingLayer = CAShapeLayer()
        wingLayer.path = wingPath.cgPath
        wingLayer.lineWidth = 3
        wingLayer.fillColor = CGColor(srgbRed: 146/255,
                                      green: 146/255,
                                      blue: 49/255, alpha: 1.0)
        
        
        view.layer.addSublayer(wingLayer)
    }
    func drawFootAndTail(_ view:UIView) {
        //尾巴
        let  tailPath = UIBezierPath()
        tailPath.move(to: CGPoint(x: 60, y: 245))
        tailPath.addQuadCurve(to: CGPoint(x: 44, y: 300),
                              controlPoint: CGPoint(x: 5, y: 312))
        tailPath.addCurve(to: CGPoint(x: 66, y: 303),
                          controlPoint1: CGPoint(x: 44, y: 299),
                          controlPoint2: CGPoint(x: 65, y: 320))
        tailPath.addQuadCurve(to: CGPoint(x: 65, y: 288), controlPoint: CGPoint(x: 66, y: 303))
        
        tailPath.close()
        
        let tailLayer = CAShapeLayer()
        tailLayer.path = tailPath.cgPath
        tailLayer.fillColor = CGColor(srgbRed: 89/255,
                                      green: 88/255,
                                      blue: 49/255, alpha: 1.0)
        view.layer.addSublayer(tailLayer)
        
        //左腳
        let  footPath = UIBezierPath()
        footPath.move(to: CGPoint(x: 100, y: 285))
        footPath.addQuadCurve(to: CGPoint(x: 90, y: 320),
                              controlPoint: CGPoint(x: 80, y: 301))
        
        footPath.move(to: CGPoint(x: 100, y: 285))
        footPath.addQuadCurve(to: CGPoint(x: 100, y: 330),
                              controlPoint: CGPoint(x: 111, y: 320))
        
        footPath.move(to: CGPoint(x: 100, y: 285))
        footPath.addQuadCurve(to: CGPoint(x: 120, y: 310),
                              controlPoint: CGPoint(x: 111, y: 310))
        //右腳
        footPath.move(to: CGPoint(x: 199, y: 285))
        footPath.addQuadCurve(to: CGPoint(x: 199, y: 320),
                              controlPoint: CGPoint(x: 190, y: 310))
        footPath.move(to: CGPoint(x: 199, y: 285))
        footPath.addQuadCurve(to: CGPoint(x: 205, y: 330),
                              controlPoint: CGPoint(x: 210, y: 310))
        footPath.move(to: CGPoint(x: 199, y: 285))
        footPath.addQuadCurve(to: CGPoint(x: 220, y: 315),
                              controlPoint: CGPoint(x: 219, y: 305))
        
        
        let footLayer = CAShapeLayer()
        footLayer.path = footPath.cgPath
        footLayer.lineWidth = 2
        footLayer.strokeColor = CGColor(srgbRed: 84/255,
                                        green: 84/255,
                                        blue: 84/255, alpha: 1.0)
        
        view.layer.addSublayer(footLayer)
    }
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        drawFootAndTail(view)
        drawBody(view)
        drawHead(view)
        drawWings(view)
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}
struct ContentView: View {
    var body: some View {
        
        DrawView()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
