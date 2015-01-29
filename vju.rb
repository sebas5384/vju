class Vju < Formula
  head "https://github.com/sebas5384/vju.git", :using => :git, :branch => :master

  def install
  	bin.install "vju"
  end
end