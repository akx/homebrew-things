class Paulstretch < Formula
  desc "PaulStretch"
  homepage "https://hypermammut.sourceforge.io/"
  url "https://github.com/akx/paulstretch/archive/v2.2-3.tar.gz"
  version "2.2-3"
  sha256 "a62ca162ba40c870078c00899852fdb3ab014b1a00c3b0c44d3cfa2d6ac7d259"

  depends_on "audiofile" => :build
  depends_on "fftw" => :build
  depends_on "fltk" => :build
  depends_on "libmxml" => :build
  depends_on "libogg" => :build
  depends_on "libsamplerate" => :build
  depends_on "libvorbis" => :build
  depends_on "mad" => :build
  depends_on "portaudio" => :build

  def install
    system "./compile_linux_fftw.sh"
    bin.install "paulstretch"
  end

  test do
    system "false"
  end
end
