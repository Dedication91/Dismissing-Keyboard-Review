
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtFld: UITextField!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        self.txtFld.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txtFld.resignFirstResponder()
        return (true)
    }


}

