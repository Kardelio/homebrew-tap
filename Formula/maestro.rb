# Generated with JReleaser 1.13.1 at 2026-05-27T11:48:39.70654+02:00

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/kardelio/maestro/releases/download/cli-2.6.0-bk.2/maestro.zip"
  version "2.6.0-bk.2"
  sha256 "05768df97703f1a9e2074ab8acddae41e9c652b7f4ff1e4d6baacc93a44a48f6"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"
  depends_on "tesseract"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.6.0-bk.2", output
  end
end
