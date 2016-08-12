#!/usr/bin/env python3

def plot():
    xvalues = [x for x,_ in pp.points]
    yvalues = [y for _,y in pp.points]
    mpp.plot(xvalues, yvalues)
    mpp.ylabel("mac n")
    mpp.xlabel("n")
    mpp.show()


if __name__ == "__main__":
    import plotpoints as pp
    import matplotlib.pyplot as mpp
    plot()
