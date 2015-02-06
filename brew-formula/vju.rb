class Vju < Formula
	url "https://github.com/sebas5384/vju/archive/master.zip"
  head "https://github.com/sebas5384/vju.git", :using => :git
  version "0.4"

  def install

    libexec.install "bin/vju"
    sh = bin + "vju"
    sh.write("#!/usr/bin/env bash\n\n/usr/bin/env SHARE=#{share} #{libexec}/vju \"$@\"")
    chmod 0755, sh

  	share.install "share/Vagrantfile"
  end
end