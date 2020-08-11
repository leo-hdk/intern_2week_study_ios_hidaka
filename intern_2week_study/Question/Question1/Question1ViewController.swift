import UIKit

final class Question1ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var addTextButton: UIButton!
    @IBOutlet weak var clearTextButton: UIButton!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //画面表示時にTextViewをクリア
        textView.text = ""
        label.text = ""
    }
    
    @IBAction func tapButton(_ sender: Any) {
        var a: String
        var b: String
        
        if textField.text == "" {
            label.text = "文字を入力してください"
            
        } else {
            a = textField.text!
            b = textView.text
            //Buttonを押すとTextFieldの文字をTextViewに表示
            //textView.text = textField.text
            textView.text = b + "\n" + a
            
            label.text = ""
        }
    }
    
    @IBAction func tapClearButton(_ sender: Any) {
        textView.text = ""
    }
}
