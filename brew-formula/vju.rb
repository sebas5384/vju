class Vju < Formula
	url "https://github.com/sebas5384/vju/archive/master.zip"
  head "https://github.com/sebas5384/vju.git", :using => :git
  version "0.2"

  def install
  	bin.install "bin/vju"
  end
end