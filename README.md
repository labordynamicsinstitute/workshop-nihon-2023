# Reproducibility workshop in Japan

Online: https:///labordynamicsinstitute.github.io/workshop-nihon-2023

## Archives



[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.8380042.svg)](https://doi.org/10.5281/zenodo.8380042)



## To run this

It is built using Github Actions, see [main.yml](.github/workflows/main.yml).

## Requirements for local build:

### Stable

- Docker
- run `docker run --rm -v "$(pwd)":/project -w /project larsvilhuber/replicability-training-presentation:latest _build.sh`

### Interactive

- Docker
- run `./start_rstudio.sh`

### Using R

- R
- Run `_build.R` (libraries need to be setup manually, we don't use `renv`)
