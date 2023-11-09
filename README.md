# Odoo Docker

This project contains Docker files for creating an Odoo image and containers.

## Deployment

To deploy this project, please follow the steps below:

1. Check out the git repository and navigate to the project directory:

```bash
$ git clone --recurse-submodules git@github.com:kenvac/odoo-docker.git
$ cd odoo-docker
```

2. Update submodule project
```bash
$ git submodule update
```

3. Build docker image and run the container:
```bash
$ make run
```

4. To start the container:
```bash
$ make start
```

5. To stop the container while keeping all data persistence:
```bash
$ make stop
```

6. To restart the Docker image:
```bash
$ make restart
```

7. To purse all Docker data:
```bash
$ make deleteall
```

8. To check the Odoo Docker logs:
```bash
$ make logs
```

## Troubleshooting
### M1 chipset
If you encounter an error such as xcrun: error: unable to load libxcrun when running the make run command, please follow the steps below:
* Run the following commands
    * `brew cleanup`
    * `sudo rm -rf /Library/Developer/CommandLineTools`
    * `sudo xcode-select --install`
    * `softwareupdate --install-rosetta`
