project           = "learning-283508"
credentials_file  = "learning-d310003491ab.json"
region            = "us-central1"
zone              = "us-central1-c"
machine_type      = "n1-standard-2"
network_tags      = ["worker-in", "worker-out", "controlplane-in", "controlplane-out", "etcd-in", "etcd-out"]
disk_type         = "pd-standard"
machine_image     = "ubuntu-os-cloud/ubuntu-1804-lts"
disk_size         = 20