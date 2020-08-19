Batting <- Batting %>%
  mutate(wRAA = ((wOBA - .342) / 1.300489) * PA)
Batting <- Batting %>%
  mutate(wRAAPA = wRAA / PA)
Batting <- Batting %>%
  mutate(wRC = round((((wOBA - .342) / 1.300489) + (9955 / 77513)) * PA))
Batting <- Batting %>%
  mutate(wRCPA = wRC / PA)
Batting <- select(Batting, -c(0,3))
Batting <- Batting %>%
  mutate(wRCPlus = round((((wRAAPA + (9955/77513)) + ((9955/77513) - (PF * (9955/77513))))/.1284) * 100))
