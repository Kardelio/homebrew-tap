# Generated with JReleaser 1.13.1 at 2026-07-28T11:49:57.944573+02:00

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/kardelio/maestro/releases/download/cli-2.7.0-bk.1/maestro.zip"
  version "2.7.0-bk.1"
  sha256 "9eab050c4c76f0f11786ee69f5bc6c26368e90c2c25bab54c9b11a7ecdc8e2d4"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"
  depends_on "tesseract"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.7.0-bk.1", output
  end
end
