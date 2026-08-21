class Lapse < Formula
  desc "Ambient timelapse screen & window recorder CLI"
  homepage "https://getlapseapp.com"
  version "0.1.0"
  license "MIT"

  depends_on "ffmpeg"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/achuthhadnoor/homebrew-tap/releases/download/v#{version}/lapse-aarch64-apple-darwin.tar.gz"
      sha256 "4c2d3066fce7ffbff0d8869a9c365d606c5f3998bef0b1b4040f92dd5036d49a"
    else
      url "https://github.com/achuthhadnoor/homebrew-tap/releases/download/v#{version}/lapse-x86_64-apple-darwin.tar.gz"
      sha256 "4c2d3066fce7ffbff0d8869a9c365d606c5f3998bef0b1b4040f92dd5036d49a"
    end
  end

  def install
    bin.install "lapse"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/lapse --version")
  end
end
