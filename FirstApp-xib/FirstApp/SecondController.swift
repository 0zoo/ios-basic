import UIKit

class SecondController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameLabel.text = name
    }

    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true)
    }

}
