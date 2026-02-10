# typed: false
# frozen_string_literal: true

class Osmedeus < Formula
  desc "A Modern Orchestration Engine for Security"
  homepage "https://github.com/j3ssie/osmedeus"
  version "5.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/j3ssie/osmedeus/releases/download/v#{version}/osmedeus_#{version}_darwin_arm64.tar.gz"
      sha256 "b7c2cca6bb53ea545f910534975a77d5ba7a28477ecd9668e941040482af7eed"
    end
    on_intel do
      url "https://github.com/j3ssie/osmedeus/releases/download/v#{version}/osmedeus_#{version}_darwin_amd64.tar.gz"
      sha256 "ee453fb3ae6f5d352f527fa10a5f510d25968f87c49f89277536431f91bd5e8d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/j3ssie/osmedeus/releases/download/v#{version}/osmedeus_#{version}_linux_arm64.tar.gz"
      sha256 "55d115530e6a453adadbe6bb9f08c4772644280ecc73a7db430730f050023648"
    end
    on_intel do
      url "https://github.com/j3ssie/osmedeus/releases/download/v#{version}/osmedeus_#{version}_linux_amd64.tar.gz"
      sha256 "1ec95597df5cdb8560f719dabf02f802a3c7ef440efd3e347729a0f55a2b92c3"
    end
  end

  def install
    bin.install "osmedeus"
  end

  test do
    assert_match "osmedeus", shell_output("#{bin}/osmedeus --help")
  end
end
