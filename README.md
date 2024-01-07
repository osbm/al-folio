
> Note: Im gonna override the default README.md file with my own.

Ok i got this website working again yayyyyy.

To compile this website you need to run

```
docker build -t website .
```

Then to compile it you need to run:

```
docker run -it -v $(pwd):/app osmanbayram-com-builder:latest jekyll build
```

