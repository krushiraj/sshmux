class Sshmux < Formula
  desc "Persistent SSH sessions using tmux"
  homepage "https://github.com/krushiraj/homebrew-sshmux"
  url "https://github.com/krushiraj/homebrew-sshmux/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "2a9b9fffebf9316fe10c30c3297061429f55911b83c2a4e460d94148ed50e614"
  license "MIT"

  depends_on "tmux"
  depends_on "node"

  def install
    bin.install "sshmux"
  end

  test do
    system "#{bin}/sshmux", "--help"
  end
end
