import UIKit

class FirstController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // 아래의 함수는 Storyboard - Segue가 발생할 때마다 호출되는 함수입니다.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let con = segue.destination as? SecondController
        con?.name = "Hello"
        
        /*
         let secondController = segue.destination as? SecondController
         if (secondController != nil) {
         secondController?.name = "Tom"
         }
         */
        
        if let secondController = segue.destination as? SecondController {
            secondController.name = "Tom"
        }
    }

}
