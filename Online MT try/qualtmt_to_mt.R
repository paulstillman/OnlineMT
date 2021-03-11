library(tidyr)
library(dplyr)

#xPos but raw

xl_raw = get_subject_lists( data =d,
                            var.name = "xPos",
                            reorder = TRUE,
                            key = key)

unlist(xl_raw, recursive = FALSE)

xPos_raw <- do.call(rbind,lapply(xl_raw,function(xPos_raw) "length<-"(xPos_raw,max(lengths(xl_raw)))))

xPos_rawStim1 <- xPos_raw[seq(1, nrow(xPos_raw), 18), ]
xPos_rawStim2 <- xPos_raw[seq(2, nrow(xPos_raw), 18), ]
xPos_rawStim3 <- xPos_raw[seq(3, nrow(xPos_raw), 18), ]
xPos_rawStim4 <- xPos_raw[seq(4, nrow(xPos_raw), 18), ]
xPos_rawStim5 <- xPos_raw[seq(5, nrow(xPos_raw), 18), ]
xPos_rawStim6 <- xPos_raw[seq(6, nrow(xPos_raw), 18), ]
xPos_rawStim7 <- xPos_raw[seq(7, nrow(xPos_raw), 18), ]
xPos_rawStim8 <- xPos_raw[seq(8, nrow(xPos_raw), 18), ]
xPos_rawStim9 <- xPos_raw[seq(9, nrow(xPos_raw), 18), ]
xPos_rawStim10 <- xPos_raw[seq(10, nrow(xPos_raw), 18), ]
xPos_rawStim11 <- xPos_raw[seq(11, nrow(xPos_raw), 18), ]
xPos_rawStim12 <- xPos_raw[seq(12, nrow(xPos_raw), 18), ]
xPos_rawStim13 <- xPos_raw[seq(13, nrow(xPos_raw), 18), ]
xPos_rawStim14 <- xPos_raw[seq(14, nrow(xPos_raw), 18), ]
xPos_rawStim15 <- xPos_raw[seq(15, nrow(xPos_raw), 18), ]
xPos_rawStim16 <- xPos_raw[seq(16, nrow(xPos_raw), 18), ]
xPos_rawStim17 <- xPos_raw[seq(17, nrow(xPos_raw), 18), ]
xPos_rawStim18 <- xPos_raw[seq(18, nrow(xPos_raw), 18), ]

# binding the rows together

xPos_rawmerged <- rbind(xPos_rawStim1, xPos_rawStim2, xPos_rawStim3, xPos_rawStim4, xPos_rawStim5, xPos_rawStim6, xPos_rawStim7, xPos_rawStim8, xPos_rawStim9, xPos_rawStim10, xPos_rawStim11, xPos_rawStim12, xPos_rawStim13, xPos_rawStim14, xPos_rawStim15, xPos_rawStim16, xPos_rawStim17, xPos_rawStim18)

#renaming the columns

xPos_rawmerged <- as.data.frame(xPos_rawmerged)

colnames(xPos_rawmerged) <- sub("V","X_", colnames(xPos_rawmerged))

#yPos but raw

yl_raw = get_subject_lists( data = d, 
var.name = "yPos",
reorder = TRUE,
key = key)

#unnest list

yl_raw <- unlist(yl_raw, recursive = FALSE)

yPos_raw <- do.call(rbind,lapply(yl_raw,function(yPos_raw) "length<-"(yPos_raw,max(lengths(yl_raw)))))

yPos_rawStim1 <- yPos_raw[seq(1, nrow(xPos_raw), 18), ]
yPos_rawStim2 <- yPos_raw[seq(2, nrow(xPos_raw), 18), ]
yPos_rawStim3 <- yPos_raw[seq(3, nrow(xPos_raw), 18), ]
yPos_rawStim4 <- yPos_raw[seq(4, nrow(xPos_raw), 18), ]
yPos_rawStim5 <- yPos_raw[seq(5, nrow(xPos_raw), 18), ]
yPos_rawStim6 <- yPos_raw[seq(6, nrow(xPos_raw), 18), ]
yPos_rawStim7 <- yPos_raw[seq(7, nrow(xPos_raw), 18), ]
yPos_rawStim8 <- yPos_raw[seq(8, nrow(xPos_raw), 18), ]
yPos_rawStim9 <- yPos_raw[seq(9, nrow(xPos_raw), 18), ]
yPos_rawStim10 <- yPos_raw[seq(10, nrow(xPos_raw), 18), ]
yPos_rawStim11 <- yPos_raw[seq(11, nrow(xPos_raw), 18), ]
yPos_rawStim12 <- yPos_raw[seq(12, nrow(xPos_raw), 18), ]
yPos_rawStim13 <- yPos_raw[seq(13, nrow(xPos_raw), 18), ]
yPos_rawStim14 <- yPos_raw[seq(14, nrow(xPos_raw), 18), ]
yPos_rawStim15 <- yPos_raw[seq(15, nrow(xPos_raw), 18), ]
yPos_rawStim16 <- yPos_raw[seq(16, nrow(xPos_raw), 18), ]
yPos_rawStim17 <- yPos_raw[seq(17, nrow(xPos_raw), 18), ]
yPos_rawStim18 <- yPos_raw[seq(18, nrow(xPos_raw), 18), ]

yPos_rawmerged <- rbind(yPos_rawStim1, yPos_rawStim2, yPos_rawStim3, yPos_rawStim4, yPos_rawStim5, yPos_rawStim6, yPos_rawStim7, yPos_rawStim8, yPos_rawStim9, yPos_rawStim10, yPos_rawStim11, yPos_rawStim12, yPos_rawStim13, yPos_rawStim14, yPos_rawStim15, yPos_rawStim16, yPos_rawStim17, yPos_rawStim18)

yPos_rawmerged <- as.data.frame(yPos_rawmerged)

colnames(yPos_rawmerged) <- sub("V","Y_", colnames(yPos_rawmerged))

#number of rows like in data 'l'
mousetrap <- data.frame(subject = 1:360, trial = 1:360, stimfile = 1:360, condition = 1:360, code = 1:360, resp_1 = 1:360, resp_2 = 1:360, response = 1:360, distractor = 1:360, error = 1:360, init_time = 1:360, RT= 1:360, MD_1 = 1:360, MD_2 = 1:360, AUC_1 = 1:360, AUC_2 = 1:360, MD_time = 1:360, x_flip = 1:360, y_flip = 1:360, z_MD_separate = 1:360, z_MD_together = 1:360, z_AUC_separate = 1:360, z_AUC_together = 1:360, comments = 1:360)

# 1 to number of participants 
mousetrap$subject <- rep_len(1:20, length.out=18)

#each is number of participants
mousetrap$trial <- rep(1:18, each = 20)

mousetrap$stimfile <- cbind(l[,c(31)])

mousetrap$condition <- NA


# coding the trials, b is half the rows of long-data

a<-c("unambiguous","ambiguous")

b<-180
a<-sapply(a, function (x) rep(x,b))
a<-as.vector(a)
mousetrap$code <- paste(a)

mousetrap$resp_1 <- NA

mousetrap$resp_2 <- NA

mousetrap$response <- cbind(l[,c(44)])

mousetrap$distractor <- NA

mousetrap$error <- NA

mousetrap$x_flip <- cbind(l[,c(45)])

mousetrap$init_time <- NA

mousetrap$rt <- NA

mousetrap$RT <- NA

mousetrap$MD_1 <- NA

mousetrap$MD_2 <- NA

mousetrap$AUC_1 <- NA

mousetrap$AUC_2 <- NA

mousetrap$MD_time <- NA

mousetrap$y_flip <- NA

mousetrap$z_MD_separate <- NA

mousetrap$z_MD_together <- NA

mousetrap$z_AUC_together <- NA

mousetrap$z_AUC_separate <- NA

mousetrap$comments <- cbind(l[,c(23)])

mousetrap_merged <- cbind(mousetrap, xPos_rawmerged, yPos_rawmerged)

write.csv(mousetrap_merged, file = "~/Downloads/qualtricsmt_mousetrap.csv", row.names = FALSE)
