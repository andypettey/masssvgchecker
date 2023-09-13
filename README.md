# Intro
This code is designed to help check the integrity of SVG files on mass.

# Setup
To install svgcheck run one of the following commands [based on your local setup].

### Python2
`pip install svgcheck`
### Python3
`pip3 install svgcheck`

# Using the script
The script should be executed in the folder you would like to process, it runs serially so if you have a significant number of files to process you should consider moving the files in batches to folders. I have provided a `helpful examples` section that give you some useful ideas on how to move files around easily.

The easiest way to use the script is to copy all of your SVGs into the svg folder of the repo, then do the following steps.

`cd svg`

`../script.sh > svgcheck.log`

Then you have to sit and wait.

# Helpful examples

## A large number of SVG files need to be processed

First you should move the files in batches (I use 500 in this example) to sub folders. You can use the command below and change the file number to make your life easier. Increment the `number` variable.

```number=1 && mkdir $number && mv `ls *.svg | head -500` ./$number/```

Then you will need to run the script multiple times, if you use iTerm you know how to create multiple terminals and do some magic there. So I will provide an example command to execute.

`filename=$(ls *.svg | head -1) && parentname="$(basename "$(dirname "$(pwd)/$filename")")" && ~/dev/svgcheck/script.sh > ~/Desktop/script$parentname.log 2>&1`

You should execute this command inside of each folder created above.