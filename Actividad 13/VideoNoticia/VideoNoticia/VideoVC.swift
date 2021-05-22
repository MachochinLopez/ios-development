import UIKit
import AVKit
import AVFoundation


class VideoVC: AVPlayerViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let ligaVideo = "http://walterebert.com/playground/video/hls/sintel-trailer.m3u8"
        if let urlVideo = URL(string: ligaVideo) {
            let asset = AVAsset(url: urlVideo)
            let item = AVPlayerItem(asset: asset)
            let miPlayer = AVPlayer(playerItem: item)
            self.player = miPlayer
            miPlayer.play()
        }
    }
}
