class Lapse < Formula
  desc "Ambient timelapse screen & window recorder CLI"
  homepage "https://getlapseapp.com"
  version "0.1.0"
  license "MIT"

  depends_on "ffmpeg"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/achuthhadnoor/lapse-cli/releases/download/v#{version}/lapse-aarch64-apple-darwin.tar.gz"
      sha256 "8cf9d8a9469d0690a7bb5e7b2dbe11b789168caaa3d343e73805496608c62779"
    else
      url "https://github.com/achuthhadnoor/lapse-cli/releases/download/v#{version}/lapse-x86_64-apple-darwin.tar.gz"
      sha256 "8cf9d8a9469d0690a7bb5e7b2dbe11b789168caaa3d343e73805496608c62779"
    end
  end

  def install
    bin.install "lapse"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/lapse --version")
  end
end
