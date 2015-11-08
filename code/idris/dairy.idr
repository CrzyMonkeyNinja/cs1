module dairy

data dairy =
  milk | spoiltMilk |
  cheese | mouldyCheese |
  curds | mouldyCurds |
  bigMess

leaveOnCounter: dairy -> dairy
leaveOnCounter milk = spoiltMilk
leaveOnCounter cheese = mouldyCheese
leaveOnCounter curds = mouldyCurds
leaveOnCounter _ = bigMess

culture: dairy -> dairy
culture milk = curds
culture curds = cheese
culture cheese = mouldyCheese
culture d = d

throwOnFloor: dairy -> dairy
throwOnFloor _ = bigMess
