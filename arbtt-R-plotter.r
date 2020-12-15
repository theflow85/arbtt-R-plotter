setwd ("/home/fsklug/R/data/")
library("libraries")
library(data.table)
library(tidyverse)
library(lubridate)


var <- as_tibble(system("arbtt-stats --for-each minute --output-format csv", intern = TRUE)) %>%
  separate(value, c("Date_Time", "Tag", "Duration", "Percentage"), sep = ",") %>%
  slice(-1) %>% 
  mutate(Detailed = str_sub(.$Tag, 9)) %>%
  mutate(Date_Time = ymd_hm(Date_Time), Tag = as.factor(Tag)) %>%
  select(Date_Time, Detailed) %>%
  mutate(Coarse = "Any") %>%
  gather(type, Passtime, -Date_Time)

show <- function(ch_day = Sys.Date()) {
  chosen_day <- ymd(ch_day, tz="CET")
  var %>% filter(Date_Time >= chosen_day & Date_Time <= chosen_day + ddays(1)) %>%
    ggplot(aes(x = Date_Time, y = Passtime, col = Passtime)) +
    geom_point() +
    facet_grid(rows = vars(type), scale = "free", space = "free") +
    scale_x_datetime(date_breaks = "15 mins", date_labels = "%H:%M") +
    theme(axis.text.x = element_text(angle = 45, vjust = 1.0, hjust = 1.0)) +
    labs(title = as.character(ch_day), x = "Time")
  }

show()