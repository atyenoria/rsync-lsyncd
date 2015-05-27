settings {
        logfile = "/var/log/lsyncd.log",
        statusFile = "/tmp/lsyncd.stat",
        statusInterval = 1,
}
 
sync{
        default.rsync,
        source="/home/vagrant/test_sor",
        target="vagrant@192.168.200.200:/home/vagrant/test_des/", 
 rsync = {
        rsh = "/usr/bin/ssh -i /home/vagrant/.ssh/id_rsa -o StrictHostKeyChecking=no",
       compress = false,
       _extra = {
             "--delete", 
             "-a",
       }
 }

}
