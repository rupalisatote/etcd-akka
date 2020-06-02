[etcd]
tstas01
tstas02
tstas03
tstas04
tstdb01

[flannel]
tstas01
tstas02
tstas03
tstas04
tstdb01

[fleet]
tstas01 fleet_metadata="Frontend=1, Master=1, Storage=1"
tstas02 fleet_metadata="Frontend=1, Processing=1, Storage=1"
tstas03 fleet_metadata="Backend=1, Processing=1, Storage=1"
tstas04 fleet_metadata="Backend=1"
tstdb01 fleet_metadata="Storage=1"

[all:vars]
fleet_auto_deploy_config="config/tst/config.yml"