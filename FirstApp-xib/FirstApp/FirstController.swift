import UIKit

class FirstController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("FirstController - viewDidLoad")
    }
    
    // 1. UIView를 코드를 통해서 생성하는 방법.
    
    //    override func loadView() {
    //        print("FirstController-loadView()")
    //        let myView = UIView(frame: UIScreen.main.bounds)
    //        myView.backgroundColor = UIColor.white
    //
    //        let button = UIButton(type: .infoDark)
    //        button.frame = CGRect(x: 30, y: 300, width: 50, height: 50)
    //        button.addTarget(self, action: #selector(foo), for: .touchUpInside)
    //        myView.addSubview(button)
    //
    //        let sampleSwitch = UISwitch(frame: CGRect(x: 100, y: 150, width: 100, height: 50))
    //        sampleSwitch.addTarget(self, action: #selector(goo), for: .valueChanged)
    //        myView.addSubview(sampleSwitch)
    //
    //        self.view = myView
    //    }
    //
    //    @objc func foo() {
    //        print("foo")
    //    }
    //
    //    @objc func goo(sender: UISwitch) {
    //        print("goo: \(sender.isOn ? "ON" : "OFF")")
    //    }
    
    
    // 2. UIView를 Interface Builder를 통해서 생성하는 방법.
    /*
    override func loadView() {
        // FirstView.xib(xml)
        //  => Android Inflate: xml을 Java의 객체로 변경하는 과정
        
        // FirstView.xib -> FirstView.nib
        //  => Bundle
        let view = Bundle.main.loadNibNamed("FirstView", owner: nil, options: nil)?[0] as? UIView
        self.view = view
    }
     */
    
    // 3.
    // UIViewController 전환 방법
    @IBAction func next(_ sender: UIButton) {
        // 1. Controller 생성한다.
        let controller = SecondController()
        controller.name = "Tom"
        // controller.nameLabel.text = "Hello"
        
        // present(controller, animated: true, completion: nil)
        // 2. present 함수 호출
        present(controller, animated: true) {
            // controller.nameLabel.text = "Hello"
            // SecondController()에서 라벨을 정의할 별도의 방법을 제공하는 것이 좋다.
        }
    }
    
}
