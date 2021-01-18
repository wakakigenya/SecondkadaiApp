
import UIKit

class ViewController: UIViewController {
    
    //テキストフィールドのoutlet設定
    @IBOutlet weak var textFieldView: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // テキストボックスのデータ取得
        resultViewController.nextView = textFieldView.text!
    }

    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        // 他の画面から segue を使って戻ってきた時に呼ばれる
    }
}
