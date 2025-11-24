class Sshmux < Formula
  desc "Persistent SSH sessions using tmux"
  homepage "https://github.com/krushiraj/sshmux"
  url "https://github.com/krushiraj/sshmux/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "b6f166a2c5581eba5bb4ebbb2cfcc2708640ede41eb3d9420de46514cd1f4bd4"
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
