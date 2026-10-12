class ScriptlingPlugins < Formula
	desc "Database plugins for Scriptling (sqlite, sql, valkey, badger)"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.30.3"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/plugins-darwin-arm64.zip"
			sha256 "64036e354009d717b5b53b0f43c7f6c71dd84c1dceb07bde1a9c1e32dce630ab"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/plugins-darwin-amd64.zip"
			sha256 "ad0558dcd0fbe4e8f0965cef94f8a7f33e35dd21c65bf794a619fdb5bf068aba"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/plugins-linux-arm64.zip"
			sha256 "ee0e995771a650ccebc7197d3f5c75acc6d1af5c49ed3622a7cad99610df4935"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/plugins-linux-amd64.zip"
			sha256 "c982a7464109b0bfb4512e879d6b28fa9bd79ecf8e034d35bbf50a52e325afdd"
		end
	end

	def install
		# The zip holds all four plugin binaries named plainly; installing
		# them together gives a directory --plugin-dir can point at.
		(libexec/"plugins").install Dir["*"]
	end

	def caveats
		<<~EOS
			The database plugin binaries are in:
			  #{opt_libexec}/plugins

			Load them with either:
			  export SCRIPTLING_PLUGIN_DIR="#{opt_libexec}/plugins"
			or pass to each run:
			  scriptling --plugin-dir #{opt_libexec}/plugins script.py

			scriptling users do not need this formula — the plugins are
			compiled in.
		EOS
	end
end
