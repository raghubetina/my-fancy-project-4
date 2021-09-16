# README template

- [Quick start](#quick-start)
- [Description](#description)
- [Usage](#usage)
  - [Build](#build)
  - [Clean](#clean)
- [Providing feedback](#providing-feedback)
- [Dependencies](#dependencies)
- [Pre-built environments](#pre-built-environments)
  - [Gitpod](#gitpod)
  - [Docker](#docker)

## Quick start

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/boothresearch/my-fancy-analysis) and run the command `make`.

## Description

Describe the purpose of the repository here.

> The readme-template project itself is a template for READMEs of repos:
>
> - that are being used to develop code that supports research papers.
> - that have main objectives of:
>    - making it easy to get feedback on the code as it evolves.
>    - preserving any discussion around the code for future reference.
>    - being as straightforward as possible for others to run and reproduce results.
>
> **Everything in this README and repository structure is just a suggestion, and is intended to be modified to suit your use case.**

## Usage

### Build

Assuming you have all the [dependencies](#dependencies), run the code with `make`:

```
make
```

If you're on Windows, you may need to [install make](http://gnuwin32.sourceforge.net/packages/make.htm).

> You can use [Gitpod](#gitpod) or [Docker](#docker) to avoid installing dependencies and dependency conflicts.

Running `make` should do everything required to produce the desired outputs:

 - `data/cleaned/cleaned.csv`
 - `artifacts/fancy_chart.png`
 - `artifacts/paper.pdf`

By default, we will search for data in the following locations for a file called `data.csv` and use the first that it finds:

 - `data/raw`

    This folder is gitignored, so you can copy real data into it and it won't be pushed or pulled by git.
 - `data/sample`

    [This folder](data/sample) contains a small synthetic dataset that you can use while providing feedback on the code.

Alternatively, you can specify a folder that contains data with an argument `DATA`:

```
make DATA='~/Dropbox/my-fancy-analysis/data'
```

### Clean

Run `make clean` to remove build artifacts and reset the folder to a clean state.


## Providing feedback

To provide feedback, please:

 - Comment on [pull requests](https://docs.github.com/en/github/collaborating-with-pull-requests/reviewing-changes-in-pull-requests/commenting-on-a-pull-request).
    
    [Line comments](https://docs.github.com/en/github/collaborating-with-pull-requests/reviewing-changes-in-pull-requests/commenting-on-a-pull-request#adding-line-comments-to-a-pull-request) are particularly helpful.
 - [Open an Issue](https://docs.github.com/en/issues/tracking-your-work-with-issues/creating-an-issue) to start a discussion.
 - [Create a pull request](https://docs.github.com/en/github/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request) to propose some code.

## Dependencies

This project depends on the following:

 - Python3
 - This
 - That

## Pre-built environments

### Gitpod

To spin up a development environment in the cloud that has all dependencies pre-installed, click on "Open in Gitpod":

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/boothresearch/my-fancy-analysis)

### Docker

This project is Dockerized, so you can run it on any OS within a sandboxed container that already has all dependencies installed.

 - [Install Docker](https://docs.docker.com/get-docker/) if you don't already have it.
 - Pull the image:

    ```
    docker pull my-username/my-fancy-analysis
    ```
 - Start the container and "shell" into it interactively:

    ```
    docker run -it my-username/my-fancy-analysis
    ```
 - Build the project:
   
    ```
    make
    ```

You can also [build the image yourself](https://docs.docker.com/engine/reference/commandline/build/) using the included `Dockerfile`, if you prefer.
