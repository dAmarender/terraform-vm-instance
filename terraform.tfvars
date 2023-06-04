project           = "gcloud-vm-388121"
instance_name     = "Terrafrom-0623"
credentials_file  = "gcloud-vm-388121-f17c2ed996e8.json"
region            = "us-central1"
zone              = "us-central1-c"
machine_type      = "n1-standard-2"
network_tags      = ["worker-in", "worker-out", "controlplane-in", "controlplane-out", "etcd-in", "etcd-out"]
disk_type         = "pd-standard"
machine_image     = "ubuntu-os-cloud/ubuntu-1804-lts"
disk_size         = 20
startup_script    = "startupscript.sh"
