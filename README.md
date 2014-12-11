## flask_docker_hello_world

Meant as a quick learning experience and a *very* simple template
for dockerizing a python app.

On a system with docker already setup, you would do the following:

```
docker build -t flask_hello_world .
docker run --name flask_hello_world -p 5000:5000 -i -t flask_hello_world
```

Then hit http://127.0.0.1:5000/ to see if it's working.

### Mac OS X and boot2docker

If you're running this on a Mac, you need to add one step to this.
Since docker is actually running in the boot2docker VM inside VirtualBox
you need to add port forwarding to your host machine to be able to see stuff.
You can do this in the VirtualBox GUI, or you can do it like this:

```
boot2docker stop
VBoxManage modifyvm "boot2docker-vm" --natpf1 "Flask5000,tcp,,25000,,5000"
boot2docker up
```

Your app would then be available on your local Mac host at http://127.0.0.1:25000
