packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    php5-cgi
  /
when "precise"
  packages |= %w/
    php5-cgi
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
