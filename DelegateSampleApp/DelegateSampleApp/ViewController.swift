import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!{
        didSet{
            // pickerView에 대한 초기화 코드
            pickerView.dataSource = self
            pickerView.delegate = self
        }
    }
    
    let animals = ["고양이", "강아지", "사자", "말", "돼지", "양"]
    let fruits = ["사과", "복숭아", "딸기"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            let arr = ["동물", "과일"]
            return arr[row]
        }
        let n = pickerView.selectedRow(inComponent: 0)
    
        var text: String
        if n == 0 {
            text = animals[row]
        }else {
            text = fruits[row]
        }
        nameLabel.text = text
        return text
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            pickerView.reloadComponent(1)
            return
        }
        let n = pickerView.selectedRow(inComponent: 0)
        nameLabel.text = (n==0) ? animals[row] : fruits[row]
    }
    
}

extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return 2
        }
        
        let n = pickerView.selectedRow(inComponent: 0)
        if n == 0 {
            return animals.count
        }else {
            return fruits.count
        }
    
    }
    
    
}

