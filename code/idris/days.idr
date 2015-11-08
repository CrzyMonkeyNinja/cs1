module days

data Day = saturday | sunday | monday | tuesday | wednesday | thursday | friday


nextDay: Day -> Day
nextDay saturday = sunday
nextDay sunday = monday
nextDay monday = tuesday
nextDay tuesday = wednesday
nextDay wednesday = thursday
nextDay thursday = friday

nextWeekDay: Day -> Day
nextWeekDay saturday = monday
nextWeekDay sunday = monday
nextWeekDay monday = tuesday
nextWeekDay tuesday = wednesday
nextWeekDay wednesday = thursday
nextWeekDay thursday = friday
nextWeekDay friday = monday
