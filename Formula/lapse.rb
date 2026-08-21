class Lapse < Formula
  desc "Ambient timelapse screen & window recorder CLI"
  homepage "https://getlapseapp.com"
  version "0.2.0"
  license "MIT"

  depends_on "ffmpeg"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/achuthhadnoor/homebrew-tap/releases/download/v#{version}/lapse-aarch64-apple-darwin.tar.gz"
      sha256 "8702ca20f60667139ae0f1caea1d120335b7df9787f76eebed787bbd88ca2950"
    else
      url "https://github.com/achuthhadnoor/homebrew-tap/releases/download/v#{version}/lapse-x86_64-apple-darwin.tar.gz"
      sha256 "8702ca20f60667139ae0f1caea1d120335b7df9787f76eebed787bbd88ca2950"
    end
  end

  def install
    bin.install "lapse"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/lapse --version")
  end
end
