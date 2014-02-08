
# DockerDNA Galera 0.1.0:
## Galera 0.1.0

### Run this container:

        docker run -d -t capttofu/docker-dna_base

### Build this container again:

        git clone https://github.com/capttofu/docker-dna.git
        cd ./docker-dna/galera
        docker build -t yourname/docker-dna_base:0.1.0 .

### Run the container you built:

        docker run -d -t yourname/docker-dna_base

### Determine which container port(s) are listening:

        docker ps
