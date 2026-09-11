cask "knot" do
	version "0.34.2"

	on_arm do
		sha256 "6ed5bc93421f95100f2c98111e337cd79176640187a1fdf74280192cb94798a3"
		url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
	end
	on_intel do
		sha256 "681e6f18f305b0d5ccf9dca57f2976c0a962fb3fd0d5d3d3d75ed269abf969f0"
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
