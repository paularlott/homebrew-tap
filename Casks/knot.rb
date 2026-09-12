cask "knot" do
	version "0.34.3"

	on_arm do
		sha256 "2374d1e3ce02c1219143e8abb6269ba9a40714fd2417e3b75d3c4fb1587c201d"
		url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
	end
	on_intel do
		sha256 "d7332e960415f24456b60c7bcb9acaa7f7b2c82623eb7f13f20900024e2ff7cf"
		url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
	end

	name "Knot"
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"

	app "Knot.app"

	# Also make the CLI available on PATH so the knot command works from the
	# terminal without separately installing the formula.
	postflight do
		# The formula also links the knot CLI; refuse to fight over the symlink.
		if File.directory?("#{HOMEBREW_PREFIX}/Cellar/knot")
			raise "knot formula is installed, which also provides the knot CLI. Uninstall it first:\n  brew uninstall knot"
		end

		# The app is ad-hoc signed (not notarized) and brew quarantines cask
		# downloads, which makes Gatekeeper kill the binary on first exec.
		# Strip the flag so the app and the CLI link work immediately.
		# Non-bang system_command: xattr -d fails if the attribute is absent.
		system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "/Applications/Knot.app"]

		FileUtils.ln_sf("/Applications/Knot.app/Contents/MacOS/knot", "#{HOMEBREW_PREFIX}/bin/knot")
	end

	uninstall_postflight do
		FileUtils.rm_f "#{HOMEBREW_PREFIX}/bin/knot"
	end

	zap trash: [
		"~/.config/knot",
		"~/.knot.toml",
	]
end
