class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.3.1"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "9a2e479400d187d1c628308fc736afd38e6425f207d6699be33ee55a57212432"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "1352d91ee46e2c63391bbce7692c34b42afbe56dabe1e4539dc91d43250d44f0"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "af705581aa9af370d05ab7f947e2e28a5130ba4db31820cb7b067990fcb8bc0f"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "d22f6ceff6b6af5176d7c18c66e3cfb9521db711138d352cec11b51f465054aa"
		end
	end

	def install
		bin.install "scriptling"
	end
end
