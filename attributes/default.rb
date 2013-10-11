#
default[:etcd][:install_method] = "binary"

# cluster options
default[:etcd][:seed_node] = nil

# if you wrap this cookbook you should use your wrappers cook name here
default[:etcd][:search_cook] = "etcd"

# set to false if you don't want environment scoped searching
default[:etcd][:env_scope] = true

# service start args to pass
default[:etcd][:args] = " -c #{ipaddress}:4001 -s #{ipaddress}:7001"

# Release to install
default[:etcd][:version] = "0.1.1"
# Sha for github tarball
default[:etcd][:sha256] = "5c25b863bd3d87a5352cf0a2ae3e1c453cc3c9fc3d880694c20da4e802b1d752"
# Use this to supply your own url to a tarball
default[:etcd][:url] = nil

default[:etcd][:state_dir] = "/var/cache/etcd/state"

# Used for source_install method
default[:etcd][:source][:repo] = "https://github.com/coreos/etcd"
default[:etcd][:source][:revision] = "HEAD"
default[:etcdctl][:source][:repo] = "https://github.com/coreos/etcdctl"
default[:etcdctl][:source][:revision] = "HEAD"
set[:go][:version] = "1.1.2" # workaround for https://github.com/NOX73/chef-golang/pull/10