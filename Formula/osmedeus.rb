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
      sha256 "c4d137fa2f87b177c23df5e881c7848511ad6318c1dc294012610cb3b02df908"
    end
    on_intel do
      url "https://github.com/j3ssie/osmedeus/releases/download/v#{version}/osmedeus_#{version}_darwin_amd64.tar.gz"
      sha256 "c811f18f135a71f3850b6eb3dc4d55971262b8adef45108eb34a2d7f07984dd5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/j3ssie/osmedeus/releases/download/v#{version}/osmedeus_#{version}_linux_arm64.tar.gz"
      sha256 "e12ab3d44b2f9e8035f67fa72f725c28b0058847a7ddab5d2711d9a19ba4a871"
    end
    on_intel do
      url "https://github.com/j3ssie/osmedeus/releases/download/v#{version}/osmedeus_#{version}_linux_amd64.tar.gz"
      sha256 "d3027a5378427f93b3fd8f92b46986cc1584b0bf01bc73af19b4c770fa99adc1"
    end
  end

  def install
    bin.install "osmedeus"
  end

  test do
    assert_match "osmedeus", shell_output("#{bin}/osmedeus --help")
  end
end
