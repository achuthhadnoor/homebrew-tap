class Lapse < Formula
  desc "Ambient timelapse screen & window recorder CLI"
  homepage "https://getlapseapp.com"
  version "0.2.0"
  license "MIT"

  depends_on "ffmpeg"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/achuthhadnoor/homebrew-tap/releases/download/v#{version}/lapse-aarch64-apple-darwin.tar.gz"
      sha256 "1235ac62807949c2c084aa8d02027e4fd05bfef4dd06d1c7895d9a760054c531"
    else
      url "https://github.com/achuthhadnoor/homebrew-tap/releases/download/v#{version}/lapse-x86_64-apple-darwin.tar.gz"
      sha256 "1235ac62807949c2c084aa8d02027e4fd05bfef4dd06d1c7895d9a760054c531"
    end
  end

  def install
    bin.install "lapse"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/lapse --version")
  end
end
