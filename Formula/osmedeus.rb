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
      sha256 "1dd7a7c4d8bbf5b672306d3ba58d6a20ce2e2bf49c82b05aba458547ccea71f1"
    end
    on_intel do
      url "https://github.com/j3ssie/osmedeus/releases/download/v#{version}/osmedeus_#{version}_darwin_amd64.tar.gz"
      sha256 "66f3669842d10832b32dc944529a276281df3a7bf89feaa458366c234ab7536b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/j3ssie/osmedeus/releases/download/v#{version}/osmedeus_#{version}_linux_arm64.tar.gz"
      sha256 "096862926d0be6f0177e35480b6475bf8d13ffd9f04d7cc9f3d73d91595bff8b"
    end
    on_intel do
      url "https://github.com/j3ssie/osmedeus/releases/download/v#{version}/osmedeus_#{version}_linux_amd64.tar.gz"
      sha256 "5c0f0949f7057d24508aec9ca66326e97a59ba4711b2e504899f837609a0bf07"
    end
  end

  def install
    bin.install "osmedeus"
  end

  test do
    assert_match "osmedeus", shell_output("#{bin}/osmedeus --help")
  end
end
