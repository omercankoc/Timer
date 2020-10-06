import UIKit

class ViewController: UIViewController {

    // TR : Belli zaman araliklarinda belirlenen hedef nesnesini tetikler.
    // EN : It triggers the specified target object at specific time intervals.
    var timer = Timer()
    var seconds : Int = 0
    var minutes : Int = 0
    var hours : Int = 0
    
    @IBOutlet weak var labelTimer: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelTimer.text = "\(hours):\(minutes):\(seconds)"
        
        // TR : Zamanlayici nesnesi olusturulur.
        // EN : The timer object is initialized.
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerFunction), userInfo: nil, repeats: true)
    }
    
    // TR : Tetiklenecek Fonksiyon.
    // EN : Function to be triggered.
    @objc func TimerFunction(){
        seconds += 1
        
        if(seconds > 59){
            minutes += 1
            seconds = 0
        }
        
        if(minutes > 59){
            hours += 1
            minutes = 0
        }
        
        labelTimer.text = "\(hours):\(minutes):\(seconds)"
    }
    
    @IBAction func actionButtonTouchUpInside(_ sender: UIButton) {
        
        // TR : Sayaci sonlandir.
        // EN : Terminate the counter.
        timer.invalidate()
        seconds = 0
        minutes = 0
        hours = 0
        labelTimer.text = "\(hours):\(minutes):\(seconds)"
    }
}

