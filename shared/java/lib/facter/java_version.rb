# Fact: java_version
#
# Purpose: store java versions in the config DB
#
# Resolution:
#   Tests for presence of java, returns nil if not present
#   returns output of "java -version" and splits on \n + '"'
#
# Caveats:
#   none
#
# Notes:
#   None
Facter.add(:java_version) do
  setcode do
    # This will fail on OS X when Java hasn't been installed yet.
    next unless system "/usr/libexec/java_home --failfast &>/dev/null"
    t_java = Facter::Util::Resolution.exec("java -version 2>&1")
    java_version = t_java.to_s.lines.first.strip.split(/version/)[1].gsub(/"/, "").strip
  end
end
