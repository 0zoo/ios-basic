import UIKit

class SecondController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func showXIBController(_ sender: UIButton) {
        let controller = XIBController()
        present(controller, animated: true)
    }
    
    @IBAction func showXIBTableViewController(_ sender: UIButton) {
        let controller = XIBTableViewController()
        present(controller, animated: true)
    }
    
    @IBAction func showStoryboardController(_ sender: UIButton) {
        performSegue(withIdentifier: "StoryboardSegue", sender: self)
    }
    
}
