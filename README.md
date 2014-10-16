Next Gen Puppet Server Dockerized
=================================

This image is for testing purpose running a Puppet Server https://github.com/puppetlabs/puppet-server


How to use
----------

Build

    docker build -t ahmet2mir/puppetserver .

Run 

    docker run -d -p 8140:8140 -h puppetserver.ad.me --name puppetserver ahmet2mir/puppetserver

Or if you using fig http://www.fig.sh. This fig use 3 agent and a master (it use ahmet2mir/puppetagent)

    fig -p myproject up

Enter in the container , check https://github.com/jpetazzo/nsenter

    sudo docker-enter myproject_puppetagent01_1
    # puppet agent -td

    sudo docker-enter myproject_puppetagent02_1
    # puppet agent -td

    sudo docker-enter myproject_puppetagent03_1
    # puppet agent -td

    sudo docker-enter myproject_puppetserver_1
    # puppet cert list -a
    + "puppetagent01.vm.local" ...
    + "puppetagent02.vm.local" ...
    + "puppetagent03.vm.local" ...
    + "puppetserver.vm.local"  ...

Troubleshoting
----------

Trace master logs

    docker logs -f puppetserver
    
Licence 
----------

Apache 2 http://en.wikipedia.org/wiki/Apache_License

