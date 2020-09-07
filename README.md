## Dockerized word image to text recognition

### Description

Given images of words, recognize the words and output the corresponding text.

### Usage

To use the docker image, first pull the image using

`docker pull jumpst3r/wordimage2text`

And then execute 
```
docker run -it --rm -v /PATH_TO_FOLDER_WITH_INPUTS:/input/figures -v /FULL_PATH_TO_OUTPUT_FOLDER/:/output/ jumpst3r/wordimage2text sh /input/script.sh /input/figures/example.png /input/figures/boxes.csv /output/
```
where `PATH_TO_FOLDER_WITH_INPUTS` is the full path to a folder containing the inputs described bellow_

The input consists of:

- `example.png`: A document image containing possibly several words.
- `boxes.csv`: A csv file containing the bounding boxes delimiting each word in the previously provided image

The output consists of:

- A csv containing the coordinates of the words with the appended detected word: 

    `x1,x2,y1,y2,detected_word`

- A zip file containing the cropped out words and a csv which can be used to trace back the original words positions and textual content.

The docker image is also compatible with [DIVAServices](https://github.com/lunactic/DIVAServices) a web-based framework providing streamlined access to DOI methods.

### Sources / Comments

Original [repo](https://github.com/clovaai/deep-text-recognition-benchmark)
