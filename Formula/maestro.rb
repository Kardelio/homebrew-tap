# Generated with JReleaser 1.13.1 at 2026-04-21T13:14:22.956139+02:00

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/kardelio/maestro/releases/download/cli-2.4.0-bk.1/maestro.zip"
  version "2.4.0-bk.1"
  sha256 "a0dcb012ff0b5ed7cad320bcc933c890a35c8670fd7e6456cff3c94b84c87703"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"
  depends_on "tesseract"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.4.0-bk.1", output
  end
end
