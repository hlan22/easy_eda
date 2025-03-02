# Easy EDA
#### Created by: Heidi Lantz

![CRAN](https://img.shields.io/cran/v/ggplot2)
![R](https://img.shields.io/badge/R-4.2.0-blue?logo=R) 
![Python](https://img.shields.io/badge/python-3.8+-blue)
![GitHub license](https://img.shields.io/github/license/hlan22/easy_eda)

Here's some information you should know about this project!

### Outline
- [Overview](#overview)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license-and-crediting)

## Overview 

Easy EDA is my personal project to create automated EDA for any data you give it!

Whether you are sick of repetitive tasks in your statistical analyses, or you are a possible employer testing if I know what I am doing, 
Easy EDA is the right package for you! :tada:

EDA is an incredibly important step to understanding the data you have been given, 
and it often can be a very repetitive process if you are dealing with lots of different data sets in a short period of time.
Easy EDA is a project that helps automate that process, 
and significantly reduces the amount of time you spend on the easy tasks such as plotting,
so that you can instead focus your time on the more difficult tasks at hand.

Additionally, Easy EDA is a more complex version of doing EDA, 
and will match the right plots depending on the comparison of your data types.
That is why it is incredibly important to make sure you have a cleaned dataset 
that contains all the correct data types, in order for this project to work.

> I am considering creating an additional project, 
called Easy Cleaning, that serves as a precursor to this project,
and will clean up your dataset such that it is perfectly useable for the Easy EDA project.

## Usage

This is an outline as to how you can use easy_eda:

- First I will make a document that you can edit in a docker container with your own data to run
- Eventually, I hope to make an R package that allows anyone to run a simple function and complete their eda for them!

Here's how it will work:
  * You **need** a clean dataset, with the correct data types assigned to your columns.
    * I may create an additional project, Easy Cleaning, to help with this step.
  * Install and import the R package, "easy_eda" as such:

```r
install.packages("easy_eda")
library(easy_eda)
```

  * Call the possible functions on the data (see [Functions guide](package_usage.md) for more)
  * Also, I want to add images to make the README usage steps easier to understand (with things such as containers)
  * Checkout the [goals.md](goals.md) file to see a more thorough description of what I aim to do.

## Contributing

Please checkout the [Contribution guidelines](CONTRIBUTING.md) before you make any contributions to the project, thanks!

## License and Crediting

(More info about the license and how you can credit my work here!)

* Credit should be given to my DSCI310 class and specifically [Milestone 1](https://ubc-dsci.github.io/dsci-310-student/project/m1.html) for info about the structuring of the report and reproducibility setup.
