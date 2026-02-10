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
      sha256 "675df0b5619ccbd56a4edef8a17bde80d04fb73afbee6c43eccf520e951c9ca8"
    end
    on_intel do
      url "https://github.com/j3ssie/osmedeus/releases/download/v#{version}/osmedeus_#{version}_darwin_amd64.tar.gz"
      sha256 "5ed72064d2b7015d0eaf02aa3c7d924c8b4c222505dea67db381ccf66e571ef8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/j3ssie/osmedeus/releases/download/v#{version}/osmedeus_#{version}_linux_arm64.tar.gz"
      sha256 "8bc048e3298388aac02f5a92b59f3f2ffaff640c027aeaae4d2ed2348b215907"
    end
    on_intel do
      url "https://github.com/j3ssie/osmedeus/releases/download/v#{version}/osmedeus_#{version}_linux_amd64.tar.gz"
      sha256 "3ae8c0bd85e3eaf11a7b9f5a819099cab39d63dbe9e25f4c6c9e4bf6be3d23f8"
    end
  end

  def install
    bin.install "osmedeus"
  end

  test do
    assert_match "osmedeus", shell_output("#{bin}/osmedeus --help")
  end
end
