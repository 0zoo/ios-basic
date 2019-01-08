import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let frame = UIScreen.main.bounds //screen size
        window = UIWindow(frame: frame) // 코드를 통해 화면을 생성 - UIWindow(frame: <#T##CGRect#>) 타입의 생성자 사용
        
        window?.backgroundColor = UIColor.purple
        
        //window?.rootViewController = FirstController(nibName: "FirstView", bundle: nil)
        window?.rootViewController = FirstController()
        // FirstController.xib를 로드합니다.
        // 간편하게 생성자로 생성 가능
        
        window?.makeKeyAndVisible()
    
        return true
    }



}

