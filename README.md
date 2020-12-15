# arbtt-R-plotter
A simple R-script to plot tasks captured by arbtt.

Hi. It works like this:

- Install arbtt by running "sudo apt-get install arbtt" in terminal
- Copy the "categorize.cfg" from my repo to ~/.arbtt/categorize.cfg. It sets up a minimal configuration. 
- Set up arbtt-capture to automatically run on startup. "cp /usr/share/doc/arbtt/examples/arbtt-capture.desktop ~/.config/autostart/", or manually add "& arbtt-capture" as startup program.
- Copy the R-file wherever you want to put it. 
- Start RStudio
- Load the R-file
- Run R-Script. 
- For the next time, comment out the first line with #

The result should be a plot with all the tasks you used on the present day. You can choose the date: Type for example "show("2020-12-25")" to display the plot for the 25th of December 2020.
