# Goals for the Project

This is a temporary file to store all my goals for the project!
A to-do list of sorts.

- "Easy Cleaning" function within the project? Or a whole new project?

- A file explicitly explaining how to know if your data is cleaned properly
  - Maybe even just general instructions on how to clean if you don't have "Easy Cleaning" set up yet

- A file that contains all the EDA function with an example dataset
  - Just to give you an idea of what types of EDA to expect

- A function that tests if your data is clean, and if not, tells you what to fix
  - Not sure if this is super feasible to tell you how to clean it 
  - Would more so function as: 
    - If you label it as numeric, check that it is indeed numeric
    - Same goes for boolean, character, etc.
    - Could give a summary of the number of categories and ask if that is what you expect?
      - This could check for typos and such in character groups maybe

- I would like to have a main function that will just output all possible (and valid) visualizations from the given dataset

- Then have kwargs that allow you to specify what types of visualizations your looking for
  - Such as:
    - type = c(scatter, heatmap, bar, line, histogram etc.)
      - (only show all possible scatter plots)
    - data = c(numeric, categorical, etc.) 
      - (only plot numeric variables and information)
    - complexity = c(one, two, three, four)
      - (describes number of variables to plot)
      - one would be only histograms for numerical, bar charts for categorical
      - two would be scatter plots (numeric and numeric), box plots (numeric and categorical), heatmaps (categorical and categorical COUNT), etc.
      - three would be heatmaps, scatter plots with color, etc. (gets more complex)
      - four would be scatter plots with color and size, maybe additional line plots
        - would be very hard to implement, especially such that each plot contains useful information

- I would like each plot to look neat with standardized labels 
  - Have centered titles, theme_bw, etc.

- Possible use of AI to create data-specific labels and human readable titles?

- I think I would use ggplot for r 
- Could I do one with altair? eventually interactive plots? would need to implement python

- Want this to be easily reproducible, will create docker container
  - such that you can use it temporarily in the container with the packages already loaded
  - will lock the rpackages used (ggplot2, etc.) using renv so that package won't have problems in the future

  And much more!