class Scriptling < Formula
	desc "A powerful scripting language with Python-like syntax and Go performance"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.2.20"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-arm64.zip"
			sha256 "1be3714e0702ec75e8b422398b99dd311bde26b185a650a69519850ff5318d23"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-darwin-amd64.zip"
			sha256 "f2131bf177e115bf8f74c7019c6f6dc77a7ccd72311c0bf5bf0555ace3421a6f"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-arm64.zip"
			sha256 "b25371dac473d0f312c182e59500bf6ef59c2c0d5247573abb6edfa31d08b752"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/scriptling-linux-amd64.zip"
			sha256 "961ad4f442e278cd534bd4f9f58de738e722ee38a724706eb14fe82403443427"
		end
	end

	def install
		bin.install "scriptling"
	end
end
