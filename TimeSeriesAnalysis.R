AirPassengers
AirPassengers.timeseries <- ts(AirPassengers,start=1949,end=2019)
plot(AirPassengers.timeseries,main="Air Passengers Time Series")

rp=c(100,140,190,200,203,230,245,267,289,213,300,340,390,300,303,230,245,367,389,313)
rp.timeseries <- ts(rp,start=c(2001,1))
plot(rp.timeseries,main="Railway Passengers Time Series")