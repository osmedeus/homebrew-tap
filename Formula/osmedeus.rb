# typed: false
# frozen_string_literal: true

class Osmedeus < Formula
  desc "A Modern Orchestration Engine for Security"
  homepage "https://github.com/j3ssie/osmedeus"
  version "5.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/j3ssie/osmedeus/releases/download/v#{version}/osmedeus_#{version}_darwin_arm64.tar.gz"
      sha256 "65b342d126579a81f492490a5dcabb2657cb85dd18ac3ed997698fedff88f608"
    end
    on_intel do
      url "https://github.com/j3ssie/osmedeus/releases/download/v#{version}/osmedeus_#{version}_darwin_amd64.tar.gz"
      sha256 "ece2f7f94156ba2d4bc4fc4d11aa83bca2be42fd009b643c00bce4471f9d65c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/j3ssie/osmedeus/releases/download/v#{version}/osmedeus_#{version}_linux_arm64.tar.gz"
      sha256 "a695c1fc29b0648acff1902302bc25d66421b3655baface6a5bffd346c3c629d"
    end
    on_intel do
      url "https://github.com/j3ssie/osmedeus/releases/download/v#{version}/osmedeus_#{version}_linux_amd64.tar.gz"
      sha256 "f80d26594d14527b0acdc5c675fbd15d450265669da3a84d2bab766acfe07d4d"
    end
  end

  def install
    bin.install "osmedeus"
  end

  test do
    assert_match "osmedeus", shell_output("#{bin}/osmedeus --help")
  end
end
