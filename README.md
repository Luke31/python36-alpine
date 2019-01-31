# python36-alpine
Python docker base-image with ability to change repository urls like pip index-url or conda channel_alias. Will also create a conda-environment under `/env`

## How to use

You can set your custom (e.g. corporate) repository urls in:
- pip: `data/pip.conf`
- conda: `data/.condarc` 

Use following command to clone the git repo and build an image: 
```bash
git clone git@github.com:Luke31/python36-alpine.git &&
cd python36-alpine &&
docker build -t python36-alpine .
```

Now you can use this image as a base-image for python-applications like:

```dockerfile
FROM python36-alpine

RUN source activate /env && pip install -r requirements.txt
RUN python yourscript.py
```