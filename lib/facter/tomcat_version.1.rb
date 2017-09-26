Facter.add(:tomcat_version1) do
  setcode do
    # Using choco list on the package namage, then splitting the results (on space)
    # then getting the 4 item.  This might change later if choco list has a different output
    # but this works for now.
    Facter::Util::Resolution.exec("puppet resource package apache-httpd --to_yaml")['package']['tomcat']['ensure']
  end
end