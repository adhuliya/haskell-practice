type Set a = a -> Bool

seta a = a == 4

insert set e = \e' -> set e' || (e'==e)

member set e = set e

union set1 set2 = \e -> set1 e || set2 e

intersection set1 set2 = \e -> set1 e && set2 e

difference set1 set2 = \e -> set1 e && not (set2 e)
