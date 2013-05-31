library(corrgram)
library(qvalue)
q = read.table("file", header = T, row.names = 1 )
corrgram(q, order = T, col.regions = colorRampPalette(c("red")), ylim = c(0,1), xlim = c(0,1), label.pos = .5, label.srt = 15, abs = T, diag.panel = panel.density, 
upper.panel = panel.pie)
