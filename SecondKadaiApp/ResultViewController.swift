import UIKit

class ResultViewController: UIViewController {

    // 2画面目のLabelを、StoryboardでこのViewControllerにIBOutletとして接続しておく
    @IBOutlet weak var Label: UILabel!
    
    // 受け取るためのプロパティ（変数）（nextView）を宣言しておく
    var nextView:String?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        let result:String? = nextView
        //nilではない場合の処理
        if result == "" {
            Label.text = "入力がありません。再度テキストを入力ください"
            
        }
        else if result != nil {
        Label.text = "こんにちは、 \(String(describing: result!))さん"
        }
            
        //nilが代入された際の分岐処理
        else {
            Label.text = "入力がありません。再度テキストを入力ください"
            }
    }
}

