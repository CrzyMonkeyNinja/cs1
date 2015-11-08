module TrafficLight

data TrafficLight =
  green |
  amber |
  red

nextColor: TrafficLight -> TrafficLight
nextColor green = amber
nextColor amber = red
nextColor red = green

