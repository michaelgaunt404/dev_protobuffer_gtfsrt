
install.packages("RProtoBuf")
library(RProtoBuf)
library(tidyverse)


url <- "http://s3.amazonaws.com/commtrans-realtime-prod/vehiclepositions.pb"
destfile <- "vehiclepositions.pb"
download.file(url, destfile)


RProtoBuf::readProtoFiles2()
readProtoFiles("gtfs-realtime.proto.txt")
feed <- readProtoFile("vehiclepositions.pb", "transit_realtime.FeedMessage")



readProtoFiles(package = "RProtoBuf")
proto.dir <- system.file("proto", package = "RProtoBuf")
readProtoFiles(dir = proto.dir)
