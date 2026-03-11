class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.2.12"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "6ba4d084e4513b8999cc9ccf01932853788bf7c2f0501c25ca5b84e1cb91f3fa"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "d4a229cd23f12585846f2aef23633df7d23831cbd93e9dd28cce7f9cfcbfb132"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "a1693cf2bd4ca7d989b2713dfd9147a4c42e974684bbcf037b0c26c97d92c648"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "ba141921d8ce92f3096d84285fe74ff8f8aa1d17eef1e39d35248f51f4e9d942"
		end
	end

	def install
		bin.install "scriptling"
	end
end
