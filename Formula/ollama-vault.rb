class OllamaVault < Formula
	desc "Manage ollama models with a vault for backup and sharing between machines"
	homepage "https://github.com/paularlott/ollama-vault"
	license "MIT"
	version "0.1.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/ollama-vault/releases/download/v#{version}/ollama-vault_darwin_arm64.zip"
			sha256 "4b54299bf9e04fce403c4e2d5a782695a21c1d3c964a5bf9f5fc8d2424a97322"
		else
			url "https://github.com/paularlott/ollama-vault/releases/download/v#{version}/ollama-vault_darwin_amd64.zip"
			sha256 "091220a9412182c5b2df630b41ce42ff7b5b954608f9b9fc14394ee677a2a0d6"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/ollama-vault/releases/download/v#{version}/ollama-vault_linux_arm64.zip"
			sha256 "cad9b89439c2cce7916e53d5501f3fafe0687834331acfbc4c00effaddb4878c"
		else
			url "https://github.com/paularlott/ollama-vault/releases/download/v#{version}/ollama-vault_linux_amd64.zip"
			sha256 "62abeda94524abff1611ee8b55ec73f2da2392bfbd3016e1e5b889063daf3d96"
		end
	end

	def install
		bin.install "ollama-vault"
	end
end
