class Lapse < Formula
  desc "Ambient timelapse screen & window recorder CLI"
  homepage "https://getlapseapp.com"
  version "0.1.0"
  license "MIT"

  depends_on "ffmpeg"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/achuthhadnoor/homebrew-tap/releases/download/v#{version}/lapse-aarch64-apple-darwin.tar.gz"
      sha256 "3257b78e59613ac534e0fdd9b414328fe8071f25648960d692e8060ada7455fc"
    else
      url "https://github.com/achuthhadnoor/homebrew-tap/releases/download/v#{version}/lapse-x86_64-apple-darwin.tar.gz"
      sha256 "3257b78e59613ac534e0fdd9b414328fe8071f25648960d692e8060ada7455fc"
    end
  end

  def install
    bin.install "lapse"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/lapse --version")
  end
end
