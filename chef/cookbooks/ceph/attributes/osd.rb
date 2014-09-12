case node['platform']
when 'ubuntu'
  default["ceph"]["osd"]["init_style"] = "upstart"
else
  default["ceph"]["osd"]["init_style"] = "sysvinit"
end
default["ceph"]["osd"]["secret_file"] = "/etc/chef/secrets/ceph_osd"
default["ceph"]["osd"]["journal_size"] = 5120

# if SSD should be automatically detected and used for journals
default["ceph"]["osd"]["use_ssd_for_journal"] = true

# list of devices to be used for journals (implies use_ssd_for_journal => false)
default["ceph"]["osd"]["journal_devices"] = []
