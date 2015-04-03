# default behavior is create
directory '/var/www' do
  # ensure we set dir permissions to 0755
  mode 0755
  #action :destroy
end


# use a template to create a new file
template '/var/www/foo.txt' do
  source 'foo.txt.erb'
end

# copy a file
# file '/var/www/bugger.txt'

# install nginx w/ whatever package manager the base system uses (inferred)
package 'nginx'

# install gem w/ optional block & options
gem_package "bundler" do
  options(:prerelease => true, :format_executable => false)
  ## or as string
  # options("--prerelease --no-format-executable")
end
