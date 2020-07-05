
import UIKit
import MediaPlayer

class GenreButtonScreen: UIViewController {
    
    var musicPlayer = MPMusicPlayerController.applicationMusicPlayer

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    @IBAction func genraButtonTapped(_ sender: UIButton) {
        playGenre(genre: sender.currentTitle!)
    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        playGenre(genre: sender.currentTitle!)
    }
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        playGenre(genre: sender.currentTitle!)
    }
    
    func playGenre(genre: String) {
        musicPlayer.stop()
        
        let query = MPMediaQuery()
        let predicate = MPMediaPropertyPredicate(value: genre, forProperty: MPMediaItemPropertyGenre)
        
        query.addFilterPredicate(predicate)
        
        musicPlayer.setQueue(with: query)
        musicPlayer.shuffleMode = .songs
        musicPlayer.play()
    }
    
}
