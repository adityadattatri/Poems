awk '{gsub(/ /, "-", $2);gsub(/ /, "", $3); print($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14)}' FIELDWIDTHS='14 129 129 18 18 22 18 18 22 19 19 23 20 20 23 18 18 22 26 26 30 27 27 31 22  23 20 20 24 18 18 22 14 14 18 12 16 12 10' OFS=',' rep_08042020.txt> rep.csv


awk '{gsub(/  /, "-", $2);gsub(/ /, "", $3); print($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14)}' FIELDWIDTHS='14 129 129 18 18 22 18 18 22 19 19 23 20 20 23 18 18 22 26 26 30 27 27 31 22  23 20 20 24 18 18 22 14 14 18 12 16 12 10' OFS=',' rep_08042020.txt> rep.csv





-----working solution

 ---new solution

 awk '{gsub(/ /, "", $2);gsub(/  /, "", $3); print($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$20,$21,$22,$23,$24,$25,$26,$27,$28,$29,$30,$31,$32,$33,$34,$35,$36,$37,$38,$39,$40)}'  FIELDWIDTHS='13 129 129 18 18 22 18 18 22 19 19 23 20 20 23 18 18 22 26 26 30 27 27 31 22  19 23 18 20 24 18 18 22 14 14 18 12 16 12 33' OFS=',' ro_rep_14042020.txt> rowise_rep_14042020.csv




 -----AWK FOR EXTRACKING PENDING REPORT
awk '{gsub(/ /, "", $1);gsub(/  /, "", $2); print($1,$2,$3,$4,$5,$6,$7,$8)}' FIELDWIDTHS='20 31 14 19 19 13 14 11' OFS=',' PEN_REP_10042020.TXT> rep_pen.csv


----DT 25/04/2020 AWK FOR CSV EXTRACTION FROM LOG
awk '{if(NR==15) print $0;if(NR>=1257 && NR<=1391) print $0}' REC_SETT_PEN_25042020.csv > MAIN_REC_SETT_PEN_25042020.csv



-----cmd line test
awk '/---qry1-hearder_st--/{flag=1; next} /DUAL/{flag=1;next} /---qry1-hearder_end--/{flag=0}flag' inputfile.csv 

awk '/MAIN_QRY/{flag=1; next}/---qry2-main_end--/{flag=0}flag' inputfile.csv 

------cmd to extract 

awk '/---qry1-hearder_st--/{flag=1; next} /DUAL/{flag=1;next} /---qry1-hearder_end--/{flag=0}flag' inputfile.csv>adi.csv ;awk '/MAIN_QRY/{flag=1; next}/---qry2-main_end--/{flag=0}flag' inputfile.csv >>adi.csv



