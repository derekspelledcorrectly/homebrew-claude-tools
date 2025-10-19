class ClaudeProfileManager < Formula
  desc "Authentication profile management system for Claude Code CLI"
  homepage "https://github.com/derekspelledcorrectly/claude-profile-manager"
  url "https://github.com/derekspelledcorrectly/claude-profile-manager/archive/refs/tags/v1.2.1.tar.gz"
  version "1.2.1"
  sha256 "aed29e19139bf177bdeafc9de399836e8b3e54543806d3f93a6386dab1d07e71"
  license "MIT"

  depends_on :macos
  depends_on "jq"

  def install
    bin.install "bin/claude-profile"
    lib.install Dir["lib/*"]
    doc.install "README.md"
    doc.install Dir["docs/*"] if Dir.exist?("docs")
  end

  test do
    system "#{bin}/claude-profile", "--help"
  end

  def caveats
    <<~EOS
      claude-profile-manager requires macOS keychain access for secure credential storage.
      
      Usage:
        claude-profile save <name> [aliases...]   Save current credentials as named profile
        claude-profile list                       Show all saved profiles
        claude-profile switch <name>              Switch to specified profile
        claude-profile <name>                     Switch to profile (default action)
        claude-profile current                    Show active profile
        claude-profile delete <name>              Delete saved profile
        claude-profile alias <alias> <profile>    Add alias for existing profile
        claude-profile aliases                    List all defined aliases
        claude-profile unalias <alias>            Remove alias
      
      Security features:
        - All credentials stored in encrypted macOS keychain
        - Profile files protected with 600 permissions
        - Input validation prevents path traversal attacks
        - Optional audit logging (set CLAUDE_PROFILE_LOG=true)
      
      After switching profiles, restart Claude Code with:
        Ctrl+D twice, then: claude -c
    EOS
  end
end