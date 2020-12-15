# arbtt-R-plotter
A simple R-script to plot the tasks that were captured by arbtt. I wrote the script for an easier documentation of my working hours.

Hi. It works like this:

- Install arbtt by running "sudo apt-get install arbtt" in terminal
- Copy the "categorize.cfg" from my repo to ~/.arbtt/categorize.cfg. It sets up a minimal configuration for arbtt.
- Set up arbtt-capture to automatically run on startup. "cp /usr/share/doc/arbtt/examples/arbtt-capture.desktop ~/.config/autostart/", or manually add "& arbtt-capture" as startup program.
- Copy the R-file wherever you want to put it. 
- Start RStudio
- Load the R-file
- Run R-Script. 
- After running the script for the first time, comment out the first line of code with # to not repeatedly install the necessary R-packages.

The result should be a plot with all the tasks you used on the present day. You can choose the date: Type for example "show("2020-12-25")" to display the plot for the 25th of December 2020.
