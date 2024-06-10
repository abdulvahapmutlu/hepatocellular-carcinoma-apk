clc,clear all,close all
%% https://archive.ics.uci.edu/dataset/423/hcc+survival
%% Read data and convert ? to -1 and create a mat file.
matrix=[1,0,1,0,0,0,0,1,0,1,1,-1,1,0,0,0,0,1,0,0,0,0,1,67,137,15,0,1,1,1.53,95,13.7,106.6,4.9,99,3.4,2.1,34,41,183,150,7.1,0.7,1,3.5,0.5,-1,-1,-1,1
0,-1,0,0,0,0,1,1,-1,-1,1,0,0,1,0,0,0,1,0,0,0,0,1,62,0,-1,0,1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,1,1.8,-1,-1,-1,-1,1
1,0,1,1,0,1,0,1,0,1,0,0,0,1,1,0,0,0,0,1,0,1,1,78,50,50,2,1,2,0.96,5.8,8.9,79.8,8.4,472,3.3,0.4,58,68,202,109,7,2.1,5,13,0.1,28,6,16,1
1,1,1,0,0,0,0,1,0,1,1,0,0,1,0,0,0,0,0,0,0,1,1,77,40,30,0,1,1,0.95,2440,13.4,97.1,9,279,3.7,0.4,16,64,94,174,8.1,1.11,2,15.7,0.2,-1,-1,-1,0
1,1,1,1,0,1,0,1,0,1,0,0,0,1,1,0,0,0,0,0,0,0,1,76,100,30,0,1,1,0.94,49,14.3,95.1,6.4,199,4.1,0.7,147,306,173,109,6.9,1.8,1,9,-1,59,15,22,1
1,0,1,0,-1,0,0,1,0,-1,0,1,0,0,0,0,0,1,1,1,0,0,1,75,-1,-1,1,1,2,1.58,110,13.4,91.5,5.4,85,3.4,3.5,91,122,242,396,5.6,0.9,1,10,1.4,53,22,111,0
1,0,0,0,-1,1,1,1,0,0,1,0,-1,0,0,0,0,0,0,0,0,0,1,49,0,0,0,1,1,1.4,138.9,10.4,102,3.2,42000,2.35,2.72,119,183,143,211,7.3,0.8,5,2.6,2.19,171,126,1452,0
1,1,1,0,-1,0,0,1,0,1,1,-1,0,0,0,0,0,0,1,1,1,0,1,61,-1,20,3,1,1,1.46,9860,10.8,92,3,58,3.1,3.2,79,108,184,300,7.1,0.52,2,9,1.3,42,25,706,0
1,1,1,0,0,0,0,1,0,1,1,0,0,1,0,0,0,-1,1,1,0,0,1,50,100,32,1,1,2,3.14,8.8,11.9,107.5,4.9,70,1.9,3.3,26,59,115,63,6.1,0.59,1,6.4,1.2,85,73,982,1
1,1,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,43,100,0,0,1,1,1.12,1.8,11.8,87.8,5100,193000,4.2,0.5,71,45,256,303,7.1,0.59,1,9.3,0.7,-1,-1,-1,1
1,0,1,0,0,0,1,1,-1,-1,0,0,0,0,0,0,0,-1,1,1,0,0,1,41,-1,-1,0,1,2,1.05,100809,13,94.2,5.7,196,4.4,3,90,334,494,236,7.6,0.8,5,-1,1.1,-1,-1,-1,0
1,0,1,0,0,0,1,1,1,0,0,0,0,1,0,0,0,-1,0,1,0,0,1,74,-1,0,0,1,1,1.33,86,15.7,96.7,4,61,3.7,1.3,132,168,113,154,-1,7.6,5,1.9,0.3,144,41,277,1
1,0,1,0,0,0,0,1,0,1,1,0,0,1,0,0,-1,-1,1,1,1,0,0,66,-1,30,0,1,1,1.53,60,13.3,90.1,5.5,207000,4.4,8.5,25,36,35,74,8.5,0.73,1,5,0.8,-1,-1,-1,1
1,-1,0,0,0,0,1,1,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,1,56,0,-1,0,1,1,1.2,6.6,13.7,93.8,4.1,91000,4.5,1,103,96,205,70,8.8,0.88,1,22,-1,82,24,-1,1
1,0,1,0,0,0,0,1,0,-1,1,0,0,1,0,0,-1,1,1,1,0,0,1,63,-1,-1,2,2,2,1.25,29,13.5,93,6,128,3.15,10.5,76,116,165,163,7.3,1.07,4,4.5,4.5,197,84,302,1
0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,1,0,1,41,100,0,1,1,2,1.61,4.6,10.2,89.6,5.5,161,3.1,3.1,24,57,163,176,5,0.8,2,2.6,1.3,25,13,60,1
1,0,1,0,0,0,0,1,-1,1,1,-1,1,0,0,0,-1,-1,1,1,1,0,1,72,-1,-1,3,2,1,2.14,60,12.1,99.2,5,58,2.4,9.8,69,63,201,235,6.2,0.96,2,2,2.9,136,95,767,0
1,1,1,0,0,0,0,1,0,1,0,0,-1,0,0,0,-1,1,1,1,1,1,1,60,100,60,2,1,1,1.05,9.2,10.3,103.7,5.4,159,3.8,0.5,56,91,459,146,5.4,1.23,5,13.5,3.8,187,58,443,1
1,-1,1,0,0,0,0,1,-1,1,0,-1,0,1,1,0,0,1,0,0,0,0,1,64,200,78,1,1,1,1.13,8.8,14.9,94.8,6.3,137,4.3,0.9,16,23,82,180,6.5,4.95,1,5.4,0.9,144,49,295,1
1,1,1,0,0,0,0,1,-1,-1,0,0,0,1,0,0,0,1,1,1,1,0,1,75,500,-1,0,1,3,1.44,34,15.9,103.4,9600,101000,3.4,3.4,27,87,260,147,6.3,0.9,5,2.3,1.6,67,34,774,0
1,0,1,0,0,0,0,1,-1,1,0,1,0,0,0,0,0,1,1,1,0,0,0,71,200,60,0,1,1,1.29,19.6,11.7,101,2600,109000,3.6,1.7,13,35,23,141,7.3,0.68,1,2.5,0.7,152.6,-1,76.9,1
1,0,1,0,0,1,1,1,0,1,0,0,0,0,0,0,0,-1,0,0,0,0,0,73,80,47,0,1,1,1.06,3.9,16.4,90.7,7.8,187,4.5,1,54,47,52,97,6.3,0.75,1,6.8,0.2,87,26,84,1
1,1,1,0,0,1,0,1,-1,0,0,1,0,1,0,0,0,0,1,1,0,0,1,66,180,0,1,1,3,1.27,1975,10.8,86.5,9100,154000,3.1,1.2,68,136,869,562,69,1.14,5,3.8,0.5,112,73,1001,0
1,1,1,0,0,0,0,1,1,1,1,0,0,1,0,0,0,1,1,1,1,1,1,64,200,60,1,1,1,4.82,185,10.7,88.1,5,194000,3.6,3.8,217,86,879,396,7,0.53,5,15,1.6,-1,-1,-1,0
1,1,1,0,-1,1,0,0,0,1,0,0,-1,1,0,-1,0,-1,0,-1,0,1,0,84,150,-1,4,1,1,1.74,5532,13.1,111,3.5,351000,2.4,1.3,26,67,108,311,5.6,0.95,1,10,0.7,-1,-1,-1,0
1,0,1,0,-1,0,0,1,0,0,1,0,0,0,0,0,0,1,1,1,1,0,1,80,100,0,2,1,1,1.33,13327,13.7,94.3,5.2,110,3.1,1.6,52,107,465,233,8.4,0.79,5,-1,0.7,93,31,79,1
1,1,1,-1,-1,-1,1,1,0,1,0,0,-1,0,0,-1,0,1,1,1,1,0,1,45,50,16,1,1,3,1.38,-1,13.6,98.4,4.3,99000,3.3,1.3,178,325,252,172,8.1,0.83,1,5,0.7,-1,-1,-1,0
1,-1,1,1,0,1,0,1,-1,-1,0,0,0,0,0,0,0,1,1,1,0,0,1,57,-1,-1,0,1,1,1.37,5.9,15.5,88.2,4.9,113,4.5,3.2,36,65,34,111,-1,-1,2,4,1,180,56,-1,1
1,0,1,0,0,0,0,1,0,1,1,0,0,0,0,0,0,1,1,1,1,0,1,61,60,67.5,1,1,1,1.3,3255,12.2,89.5,4.4,108,3,1.1,59,85,419,293,7.7,0.67,2,6.5,0.4,94,27,70,0
1,1,1,0,-1,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,20,-1,2,1,1,1,1.21,1.9,9.9,83.4,8.1,556,3.2,1.8,150,112,599,974,7.7,0.7,5,-1,1.1,22,7,369,1
1,1,1,1,0,-1,0,1,1,1,0,0,0,0,0,0,0,-1,1,1,1,0,1,60,20,8,2,1,1,1.19,11,13.1,87.9,7.8,212,3.5,0.7,27,26,143,158,8.2,0.71,1,16,-1,-1,-1,-1,1
1,0,1,0,-1,0,0,1,-1,1,1,-1,0,1,0,0,0,1,1,1,0,0,1,62,120,-1,0,1,1,1.44,1237,12.2,94,6200,93000,4.2,1,35,85,191,129,58,1.06,5,7,-1,75,24,239,1
1,1,1,-1,-1,-1,0,1,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,1,67,100,-1,0,1,1,1.32,7.7,15.7,96.1,9.1,268000,3.4,0.6,20,29,49,135,8.2,0.9,2,-1,-1,-1,-1,-1,1
1,1,1,0,-1,0,0,1,-1,-1,0,0,0,1,0,0,-1,0,0,0,0,0,1,77,-1,-1,0,1,1,1.24,266,13.7,97.7,13000,170000,4.2,0.5,68,85,232,227,16.8,1.72,1,5.9,-1,-1,-1,-1,1
1,1,1,1,0,1,0,1,-1,0,0,0,0,1,0,0,0,1,0,1,0,0,0,62,-1,0,0,1,1,1.28,5689,14.3,99.6,6.8,77,3.8,1.7,154,102,184,184,6.9,0.89,2,3,0.77,-1,-1,-1,1
1,-1,0,1,-1,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,76,0,0,0,1,1,0.96,14.2,14.8,98.5,4.95,187,4.2,0.77,43,86,89,113,6.7,0.95,3,8.8,0.37,-1,-1,-1,1
1,1,1,0,0,0,0,1,0,0,1,0,0,1,0,0,0,-1,1,1,0,0,1,73,75,0,4,1,2,2,3.1,13.1,109.3,44.6,60,2.3,7.8,38,74,180,127,5.6,0.88,5,3.1,3.3,98,89,870,0
1,1,1,0,0,0,0,1,-1,1,1,0,-1,1,0,0,-1,-1,0,1,0,0,1,84,200,30,1,1,2,1.24,633,13,96.5,7200,143000,2.3,1.1,40,58,322,209,6.7,1.4,5,4.9,0.2,57,25,134,0
1,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,70,100,0,0,1,1,1.09,5.4,14.9,105,7.2,230000,4.2,1.3,18,26,174,92,7.3,0.8,2,6,0.3,-1,-1,-1,1
1,1,1,1,0,1,1,1,1,0,0,0,0,1,0,0,0,-1,0,-1,0,1,1,59,200,0,0,1,1,1.42,479,11.3,82.2,9500,160000,3.1,1.4,113,143,924,288,7.9,0.98,5,17,0.6,-1,-1,-1,1
0,-1,0,0,0,1,1,1,0,0,0,0,-1,1,0,0,0,-1,-1,-1,0,0,1,71,0,0,0,1,1,1.18,19,13.9,88.3,6.86,201000,4.4,0.8,142,117,123,104,8.5,0.74,2,3.3,0.3,143,50.18,120,1
1,0,0,0,0,1,0,1,0,0,1,1,0,1,0,0,0,-1,0,0,-1,-1,0,66,0,0,0,1,1,1.21,2.8,15.7,92.7,15.4,188000,4.1,0.7,299,553,196,68,6.5,1.3,1,5,0.3,-1,-1,-1,1
0,0,1,0,0,0,0,1,-1,-1,0,0,0,0,0,0,0,-1,0,0,0,1,0,86,-1,-1,3,1,1,1.2,185203,15,85.5,8.8,183,3.6,1,49,117,442,278,7.2,0.86,5,15.8,0.3,21,9,279,0
1,0,1,-1,-1,-1,-1,1,0,-1,0,1,0,0,0,-1,1,1,1,1,0,0,1,71,75,-1,0,1,1,1.17,5,15.1,104.1,4.3,65000,3.8,2.5,61,56,239,56,7.3,0.7,1,2,0.2,-1,-1,-1,1
0,0,0,0,0,1,1,1,-1,0,0,0,0,0,0,0,0,-1,1,1,0,0,1,52,0,0,0,1,1,1.71,237,15.6,98.1,4.3,88,3.2,2.2,30,52,72,97,6.7,0.86,5,2.2,0.5,-1,-1,-1,1
1,0,1,0,0,0,0,1,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,60,-1,0,0,1,1,1.18,2.8,16.6,93.8,8300,167000,4.9,0.9,35,29,62,68,8.3,0.72,1,2.3,-1,-1,-1,-1,1
0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,-1,-1,45,0,0,0,1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,1
1,1,1,0,0,0,0,1,0,-1,0,0,0,0,0,0,0,1,1,1,1,1,0,66,-1,-1,1,1,2,1.64,16,14,102.9,11.5,277000,3.1,6.8,140,244,795,595,7.2,0.79,1,2.3,4.1,63,34,888,0
1,1,0,0,0,0,0,0,0,1,1,0,0,1,1,0,1,0,0,0,0,0,0,80,0,80,0,1,1,1.33,163,10.6,96.2,9900,280000,3.3,1,28,57,236,171,7.5,1.38,1,19,-1,45,21,802,0
1,-1,1,0,-1,1,0,1,0,1,0,0,0,0,0,0,0,1,1,1,0,0,0,58,-1,40,0,1,1,1.49,20,15,96.7,9,78,4.6,2.1,40,49,137,109,7.6,0.8,1,2,0.4,184,59,905,1
0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,1,1,27,0,0,2,1,1,0.97,46,10.5,78.7,20.9,251,2.4,0.3,31,185,91,539,5,0.38,5,20,0.3,-1,-1,-1,0
0,0,1,-1,-1,-1,1,1,-1,0,1,0,0,0,0,0,0,-1,1,1,0,1,0,73,100,0,0,1,1,1.2,41470,12.6,91.4,12,275000,3.11,2.3,55,94,394,350,7.3,1.7,5,-1,0.8,84,37,497,0
1,1,1,0,0,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,73,-1,0,0,1,1,1.33,4.7,11.8,80.2,3.7,99,4.1,0.7,50,47,67,62,7.4,0.77,1,2.3,-1,104,37,635,1
1,-1,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,1,1,0,0,1,50,-1,0,0,1,1,1.65,7.3,15.3,93.7,3500,57000,-1,1.4,111,93,294,130,-1,0.76,2,2,0.3,184,2.26,59,1
1,1,1,0,0,0,1,1,-1,1,0,-1,-1,0,0,0,-1,1,1,1,1,0,1,51,100,30,3,1,2,1.35,1898,12.4,95.1,9.8,216,2.7,8.2,164,523,433,397,6.7,0.82,1,2.1,5.5,56,27,742,0
0,1,0,-1,-1,-1,1,0,0,0,1,0,-1,1,0,-1,-1,0,-1,0,0,1,1,78,0,0,1,1,1,1.32,77,10.8,88,6000,174000,3.2,0.9,48,19,171,923,5.4,1.31,3,15.4,-1,-1,-1,-1,0
1,1,1,0,-1,-1,-1,1,0,1,1,0,-1,1,0,0,-1,0,0,1,0,0,1,81,100,10,2,1,2,3.56,2.7,7.3,90.8,2.42,159000,3.4,0.5,25,32,80,55,6.2,0.85,1,2.2,-1,22,6,48,0
1,-1,1,0,0,0,0,1,0,1,1,0,0,1,0,0,0,1,0,1,0,0,1,65,100,-1,0,1,1,1.24,2.6,10.3,83,6.1,1.71,3.9,0.8,11,28,77,120,7,0.58,1,4.7,0.85,32,10,18,1
1,-1,1,0,0,0,0,1,0,0,1,-1,-1,0,0,0,-1,1,1,1,0,0,1,72,70,0,3,2,2,1.96,12,10.9,102,4.1,99,1.9,4.2,73,85,470,263,7,0.99,1,8.5,1.9,44,20,176,0
1,1,0,-1,-1,-1,-1,0,0,1,1,0,-1,1,1,-1,0,0,0,0,0,0,0,82,0,-1,0,1,1,1.11,-1,18.7,92.4,6900,270000,4,0.9,35,73,115,103,6.8,1.24,1,10,-1,-1,-1,-1,0
1,1,0,1,0,1,0,1,1,1,0,0,0,0,0,0,0,1,1,1,1,0,1,76,0,50,1,1,3,1.28,608,12.6,100,5.4,129,4,1.7,107,99,125,100,7.5,0.9,5,3.5,0.5,-1,-1,-1,1
1,1,1,0,0,1,1,1,0,1,0,0,0,0,0,0,0,1,1,1,0,0,1,56,100,40,0,2,2,1.46,41,14.6,100.8,5.5,42000,3.1,3.7,121,165,101,207,6.3,0.69,1,3,1.9,224,95,363,1
0,0,1,0,0,0,0,1,0,1,0,1,0,0,0,0,0,1,1,1,0,0,1,68,-1,30,2,1,2,1.94,-1,11.5,97.4,5700,77000,2.7,4.9,34,48,46,178,6.1,0.62,1,4.6,2.2,-1,-1,-1,1
1,1,1,0,0,0,0,1,0,1,1,0,0,1,0,0,0,1,1,1,0,0,1,72,300,-1,3,1,3,1.57,2,12.6,96.6,2.9,76000,3.5,2.4,33,40,110,166,-1,0.77,1,2,0.5,-1,-1,-1,1
1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,-1,-1,-1,-1,0,0,0,66,0,0,0,1,1,1.29,7,12.1,95.1,3.8,77000,3.8,1.4,37,38,194,161,6.7,0.71,1,10,0.5,0,0,0,1
0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,-1,0,0,1,0,40,0,0,2,1,1,1.17,3.1,15.1,86,8.9,275000,2.8,1.3,74,50,23,104,5.4,0.6,5,7.8,0.2,46,18,-1,0
1,-1,1,0,-1,1,0,1,0,1,0,0,0,0,0,0,0,-1,1,1,0,0,1,68,60,-1,0,1,1,1.34,13,15.6,93,4.9,91000,4.54,1.4,54,52,275,113,7.8,0.55,2,6.2,0.3,94,33,393,1
1,1,1,0,0,1,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,1,63,100,0,0,1,1,2.07,1.7,9.5,99.2,3300,79000,2.1,1.6,56,82,134,113,37,0.4,1,2.7,0.2,94,37,48,1
1,1,1,0,0,0,0,1,0,0,1,0,0,0,0,0,0,-1,1,1,0,1,1,72,100,0,0,1,2,1.3,249,12.7,100.3,5.5,114,3.1,3.9,21,42,40,108,5.8,0.9,5,8,1.2,37,17,419,0
0,1,1,0,0,1,0,1,-1,0,0,1,0,0,1,0,-1,-1,0,1,1,0,1,88,80,0,2,2,3,1.27,66,10.9,97.3,8.9,270,2.7,2.1,145,84,179,260,5.9,-1,5,3,1.3,15,17,639,0
0,1,0,0,0,1,0,1,1,0,0,0,0,0,0,0,0,-1,1,1,0,0,1,23,0,0,0,1,1,1.17,358,12.7,74,2.2,51,2.9,2.8,53,41,54,94,4.9,0.2,2,5.4,0.8,50,16,20,1
1,1,1,0,0,0,0,1,0,1,0,0,0,0,0,0,1,0,0,1,1,1,1,59,75,44,3,2,2,1.01,1810346,13,102.1,8300,433000,3.4,1.9,138,86,1575,417,6.5,0.64,5,15,1.1,-1,-1,-1,1
1,1,1,0,0,0,0,1,-1,1,0,0,0,1,0,0,0,-1,1,1,1,1,0,82,50,48,2,1,2,1.53,33502,14.4,101.1,11.6,109,3.1,2.3,27,80,177,1.28,6.7,1.5,5,4,0.8,26,15,227,1
1,1,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,0,1,1,1,67,-1,0,0,1,1,0.94,20,13,92,6.9,222000,3.7,0.6,162,354,1390,684,7.1,0.81,5,-1,-1,-1,-1,-1,0
1,1,1,0,-1,0,0,1,0,1,0,0,0,1,0,0,0,1,1,1,0,0,1,61,-1,15,0,1,1,1.15,2.5,14.9,92.3,6,159000,3.8,1,28,38,74,101,7.4,1.1,5,7.5,0.3,61,-1,255,1
1,1,1,0,-1,-1,1,1,-1,-1,0,0,0,0,0,0,0,1,1,1,0,0,1,61,100,-1,0,1,1,1.92,2269,12.1,119,5.1,80000,-1,9.6,204,357,199,174,-1,0.99,1,7.6,4.6,178,90,960,0
1,1,1,0,0,0,0,1,0,-1,0,0,0,1,0,0,0,1,0,1,1,0,0,67,-1,-1,2,1,2,3.16,4181,9.1,103.6,5.1,128000,3,2.2,57,91,115,165,7.7,0.83,1,4.5,1.2,72,29.5,355,0
1,1,1,0,0,0,0,1,-1,-1,0,0,0,0,0,0,0,-1,0,1,0,0,1,78,80,-1,0,1,1,1.45,5.1,14.4,100.2,7.1,77000,4.1,0.9,43,63,540,114,7,1.09,5,-1,-1,-1,-1,-1,1
1,1,1,0,0,0,0,1,0,-1,0,0,0,0,0,0,0,-1,0,1,0,1,1,52,80,-1,3,1,1,1.34,345,9.8,81.8,13.6,561,2.6,0.5,43,43,23,88,5.6,-1,5,4.7,0.5,19,8,141,1
1,-1,1,0,0,0,1,1,-1,1,0,0,0,0,0,0,0,1,1,1,0,0,0,51,100,34.5,2,2,2,2.08,2.9,10.4,91.1,5.8,91000,2.4,16,123,145,109,190,5.9,0.9,0,-1,9.6,-1,-1,-1,1
1,1,1,-1,-1,-1,-1,1,0,-1,1,0,0,1,1,0,-1,-1,1,1,0,1,1,74,-1,-1,3,2,1,1.32,2.5,12.6,83.7,9.8,102000,3.3,1.2,29,43,196,204,7.3,1.1,5,-1,0.5,-1,-1,-1,0
1,0,1,0,-1,0,0,1,0,-1,1,0,0,0,0,0,0,1,1,1,0,0,1,56,100,-1,1,2,1,1.63,5.04,15.8,99,5.8,75000,3.5,4.6,93,85,193,165,6.6,0.7,1,6,1.7,200,87,316,1
1,0,1,0,0,0,0,1,0,0,-1,-1,-1,1,1,0,0,0,-1,1,0,0,0,64,100,0,1,1,3,1.71,3.7,14.8,104.3,5.8,56000,2.7,2.6,74,157,311,280,8,0.8,2,3,1.4,-1,1.52,859,1
1,1,1,0,0,0,0,1,0,-1,0,0,0,0,0,0,0,1,1,1,1,0,1,83,100,-1,2,1,3,1.48,2.6,12.7,106,3.8,80,2.9,3.4,34,53,156,207,7.2,-1,2,4.1,1.4,105,69,221,0
1,-1,0,0,0,0,1,1,-1,1,1,0,0,1,0,0,0,0,1,0,0,0,1,57,0,-1,0,-1,-1,1.1,2.9,16.4,94.8,4.6,94000,4.1,1.1,104,74,88,85,7.9,1.05,1,5.5,0.3,-1,-1,-1,1
1,1,1,0,0,1,0,1,0,1,0,1,0,0,0,0,0,0,1,1,1,0,1,58,-1,10,1,2,1,1.47,20,13.9,100.8,4,112000,3,2.9,50,92,124,244,6.3,0.8,2,6.8,0.7,181,99,108,1
1,1,1,0,0,0,0,1,0,-1,0,0,0,0,0,0,0,-1,0,1,0,1,1,71,-1,-1,1,1,1,1.08,2.79,12.6,83.9,7100,284000,-1,-1,28,46,70,213,-1,0.48,5,-1,-1,26,8,-1,1
1,0,0,0,0,1,1,1,0,1,0,0,0,0,0,1,0,0,1,1,0,0,1,52,0,33,0,1,2,-1,42,15.8,97.9,4.2,142000,4.2,0.5,74,62,38,70,7.5,0.77,3,1.5,-1,120,35,30,1
1,1,1,0,0,0,0,1,0,-1,1,0,0,0,0,0,0,1,1,1,0,0,1,74,100,-1,0,1,2,1.37,457,11.7,70.6,5.7,138000,4.1,2.1,22,33,33,90,9.7,1.6,5,5.6,0.9,13,3,28,0
1,0,1,0,0,1,0,1,0,1,0,0,0,0,0,0,0,1,1,1,0,0,1,61,-1,50,1,2,3,1.23,-1,9.5,90,7.6,38000,2.2,1.5,59,51,993,474,3.9,2.69,1,2,1,-1,-1,-1,1
1,1,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,1,0,69,100,0,2,1,3,1.41,123,10.1,89.5,2.3,89000,4,4.3,31,60,75,177,6.8,0.7,3,3.5,1,37,11,173,0
1,0,1,0,-1,0,0,1,0,-1,1,0,0,1,0,0,0,1,1,1,-1,-1,-1,65,-1,-1,0,1,1,1.22,8.7,14.6,95.1,6.7,142000,4.2,1.3,19,33,346,120,7.8,0.83,-1,-1,0.3,184,65,423,1
1,1,1,0,0,1,0,1,0,0,1,0,-1,1,1,0,0,-1,0,1,0,0,1,79,70,0,3,1,1,1.01,226,11.5,95.6,6.3,108,4.2,1,27,31,667,222,6.2,3.13,1,8.8,0.2,-1,-1,-1,0
1,1,1,0,0,0,0,1,0,1,1,1,-1,-1,0,-1,0,-1,-1,1,1,1,1,69,200,60,1,1,1,1.39,2159,13.1,90.6,10400,261000,3.6,1.9,42,197,552,335,7.1,0.68,5,-1,0.6,-1,-1,-1,0
1,-1,1,0,0,0,0,1,0,1,1,0,0,1,1,-1,0,0,0,0,0,0,1,87,100,50,0,1,1,1.09,48,12.6,97.6,4.9,169000,4.2,0.8,30,31,86,91,6.9,1.9,5,2,-1,53,21,278,1
1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,78,0,0,1,1,1,1.6,2.4,9.5,85.8,6900,228000,3.5,0.6,11,17,44,124,6.8,1.6,1,5.5,-1,15,7,810,0
1,1,1,0,0,0,1,0,1,0,1,0,0,1,0,0,0,0,0,1,0,0,1,71,-1,0,1,1,2,1.11,5,9.1,90.9,6.36,307000,2.47,-1,31,29,339,254,5.5,1.18,3,6.3,-1,-1,-1,-1,1
1,0,1,0,0,0,0,1,0,-1,0,0,-1,0,0,0,0,1,1,1,1,0,1,58,-1,-1,0,1,1,1.64,64,14.1,103.6,4.5,68,2.9,3.3,28,43,51,137,6.8,0.67,4,4.7,1.1,-1,-1,-1,1
1,0,1,0,-1,0,0,1,0,-1,0,0,0,1,0,0,0,0,0,0,0,0,0,73,-1,-1,0,1,1,1.23,5.5,13.1,89.6,6.1,160000,3.2,0.8,28,30,90,92,6.3,0.86,5,-1,-1,93,25,29,1
1,0,1,0,-1,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,1,73,-1,0,2,1,2,1.67,8.5,13,102.3,24.8,133000,2.7,9.5,262,335,351,66,6.1,1.2,5,7,5.5,-1,-1,-1,1
1,1,1,-1,-1,-1,0,1,0,0,0,0,0,0,0,-1,0,1,1,1,0,1,0,93,-1,0,2,1,1,1.16,2785,12,94.4,7.9,78000,2.6,3.5,26,34,339,297,5.7,2.19,5,-1,1.5,55,33,256,1
1,1,0,0,0,0,1,1,0,-1,0,0,0,1,0,0,0,-1,1,1,0,1,1,52,0,-1,1,1,3,1.04,6574,13.5,98,4800,77000,3.5,28.9,56,192,464,262,6.9,1.2,5,4,19.5,121,27,749,0
1,1,1,0,0,0,0,1,0,-1,0,0,0,1,0,0,-1,1,1,1,0,0,1,64,70,-1,2,1,2,1.55,5.7,13.9,99.7,5200,124000,2.1,0.8,37,75,203,110,5,0.56,3,2.4,-1,92,56,489,1
1,1,0,1,-1,-1,1,1,-1,-1,0,0,-1,0,0,0,0,-1,-1,1,0,-1,0,63,0,-1,4,3,3,1.93,-1,13.5,93.3,8190,406000,2.9,40.5,139,266,403,670,6.3,4.82,5,-1,29.3,-1,-1,-1,0
1,1,0,0,0,0,0,0,-1,1,0,0,0,1,0,0,0,0,0,0,0,0,0,64,0,50,1,1,1,1.17,39,12.6,93.8,4900,144000,3.8,1,42,74,277,312,78,1.01,1,15,-1,87,25,81,1
1,1,1,0,0,0,0,1,-1,0,0,0,0,1,1,0,0,1,1,1,0,0,1,67,-1,0,3,1,2,1.48,2.5,14.3,101.5,5,120,2.2,1.2,34,71,222,97,5.2,2.82,3,2.4,0.3,92,56,48.9,1
1,1,1,0,0,1,1,1,0,1,0,0,0,0,0,0,1,0,1,1,0,0,1,50,80,1,0,1,1,1.18,32,14,90.1,5.2,121000,4.2,0.4,420,226,147,174,8.6,0.9,5,3,-1,26.4,54,2230,1
1,1,1,0,0,0,0,1,0,0,1,0,-1,0,1,0,0,1,1,1,0,0,1,79,75,0,3,1,2,1.32,7.6,5,69.5,3800,96000,3.7,0.5,17,69,76,86,6.3,2.68,1,10,-1,9,3,490,0
1,1,1,0,0,0,0,1,0,0,1,1,0,1,0,0,1,0,0,1,0,1,1,85,100,0,1,1,1,1.25,173,11.3,103.9,6200,176000,2.4,1.7,63,114,80,163,6.1,0.67,5,20,0.5,131,78,1316,0
0,0,1,0,0,0,0,1,-1,-1,0,0,0,0,0,0,0,1,0,1,0,0,0,62,-1,-1,0,1,1,1.54,2.3,12.1,89.7,4.5,97000,2.7,1.4,19,27,72,120,4.3,0.61,5,4,0.7,-1,-1,-1,1
1,1,1,1,0,1,0,1,-1,1,0,0,0,1,0,0,0,1,1,1,1,1,1,74,200,30,2,2,2,1.26,114,14.9,104.5,4.3,90000,3.2,4.8,106,154,148,166,7.2,0.48,5,12.6,1.8,161,96,297,1
1,1,1,0,0,0,0,1,0,-1,0,1,0,0,0,0,0,-1,1,1,1,0,1,56,90,-1,2,1,2,1.87,173,11.1,105.5,6.1,51000,3.1,32.3,110,206,127,188,5.4,1.29,5,-1,22.1,-1,-1,-1,0
1,0,1,0,0,0,0,1,0,-1,0,0,0,0,0,0,0,1,1,1,0,0,1,74,100,-1,0,1,1,1.36,18,15.3,90.9,4.9,81000,4.2,1.7,35,49,97,109,7.3,1.02,1,3.5,0.3,-1,-1,-1,1
1,1,0,1,0,1,0,1,0,1,0,0,0,0,0,0,0,1,1,1,1,1,0,62,0,7.5,1,1,1,1.45,42,16.2,99.1,5.001,77000,4.1,1.3,42,118,279,158,7.7,0.88,2,7.4,0.3,-1,-1,-1,1
1,1,1,0,0,0,0,1,0,-1,1,0,-1,0,0,0,0,1,1,1,1,0,1,60,100,-1,3,3,2,1.87,28274,10.3,94.7,11.1,109000,2.4,5.7,25,111,55,128,7,1.3,1,1.5,1.9,51,18,56,0
1,1,1,0,-1,-1,0,1,0,1,0,0,0,0,0,0,0,-1,-1,-1,0,0,0,55,100,43,0,1,1,1.23,736,14,88.2,4.68,286000,4.7,0.8,48,113,649,629,8.4,0.71,5,9.1,0.3,-1,-1,-1,1
1,1,1,0,0,0,0,1,0,1,1,0,-1,1,0,0,0,1,1,1,0,0,0,57,96,60,0,1,3,1.17,1009,13.8,93.2,3100,137000,3,0.7,25,55,343,235,-1,0.79,2,20,-1,-1,-1,-1,0
1,1,1,1,1,1,0,1,0,-1,0,0,0,0,0,0,0,-1,1,1,0,0,0,63,120,-1,4,3,2,2.42,22475,12,111.4,9.9,70000,3.28,19,134,178,54,146,8,3.23,1,-1,9.7,106,67,2165,0
1,0,1,0,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,63,-1,0,0,1,1,1.28,5.2,14.6,96.1,6.1,194000,4.2,7.9,97,69,816,79,7.7,1.02,1,3,-1,-1,-1,-1,1
1,0,1,0,0,0,0,1,0,1,0,0,0,0,0,0,0,1,0,1,0,0,0,79,180,23,0,1,2,1.46,5.2,14.9,103.8,4500,53000,3.2,1.4,62,87,263,239,8.1,0.72,1,1.5,1,-1,-1,-1,1
1,1,0,1,0,-1,0,1,1,0,1,0,0,1,0,-1,-1,-1,-1,-1,0,0,0,63,0,0,1,1,1,1.14,14177,10.2,96.1,6000,109000,2.6,4.9,70,113,833,980,7.5,0.78,5,9,2.8,-1,-1,-1,1
1,0,1,0,0,0,0,1,0,0,1,0,0,0,0,0,0,-1,0,0,0,0,1,59,100,0,0,1,1,1.94,3.1,10.8,102.8,5300,97000,3.6,1.1,119,125,663,433,6.5,0.87,2,3.2,0.4,52.5,37,856,0
1,1,1,0,0,1,1,1,0,1,0,0,0,0,0,0,0,1,1,1,1,1,0,51,75,52.5,2,1,1,1.56,50655,9.8,85.6,3900,132000,2.6,2.6,123,219,503,363,7.3,0.55,1,4,1.5,40,12,57,0
1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,-1,-1,0,0,0,0,1,74,0,0,0,1,1,1.11,1.2,15.1,83.8,5.2,178000,4.7,0.5,35,17,45.3,151,6.4,1.5,1,8.3,-1,88,27,90,1
1,1,1,0,0,1,1,1,-1,1,0,0,1,0,0,0,-1,1,0,1,0,0,0,62,-1,-1,2,1,2,1.08,657,11.8,89.2,9400,211000,3.2,0.8,43,101,646,466,7.3,0.7,1,8.3,-1,-1,-1,579,0
1,1,1,0,0,0,0,1,0,-1,0,0,0,0,0,0,0,0,0,1,1,0,1,76,100,-1,4,2,2,1.2,421500,14.3,89.5,9.8,309000,3.1,1.5,20,44,291,217,6.3,0.7,1,20,0.5,52,17,832,0
1,0,0,0,0,-1,1,1,0,-1,1,0,0,0,0,0,0,1,1,1,0,0,1,73,0,-1,0,1,1,1.2,472,15.6,88.4,5.5,83000,4,2.4,117,128,249,117,7.2,0.69,1,13,0.7,-1,-1,-1,1
1,0,1,0,0,0,-1,1,0,0,1,0,-1,1,0,0,0,-1,1,1,1,0,1,76,-1,0,3,2,1,1.66,77,12.3,104.2,2900,60000,3.2,2.8,54,38,311,182,6.2,0.77,2,4.3,1,93,47,307,1
1,0,0,1,0,0,0,1,0,1,0,0,0,0,0,0,0,-1,-1,0,0,0,0,72,0,510,2,1,1,1.13,2.1,12.6,95.1,8.7,254000,3.68,0.7,26,38,161,127,6.9,1.11,2,4.3,-1,28,10,308,0
0,1,1,-1,-1,-1,-1,1,0,0,1,0,0,0,0,-1,0,0,0,1,0,0,1,77,75,0,2,2,2,1.07,2,11.6,83.5,9,318000,3.89,0.9,23,48,319,171,7.1,0.66,2,5.8,-1,-1,-1,-1,0
0,1,0,-1,-1,-1,0,1,0,0,0,1,0,1,0,-1,-1,-1,0,0,1,1,0,75,0,0,2,1,3,1.22,4.2,14.9,87.4,15.4,179000,3.5,0.6,31,61,196,150,5.4,0.7,5,17.5,0.3,-1,-1,-1,1
0,0,1,-1,-1,-1,0,1,0,-1,0,0,0,0,0,0,0,1,0,1,0,0,1,55,100,-1,2,2,2,2.5,7.5,11.3,119.6,13.1,135000,3.2,8.6,62,94,82,147,6.5,1,5,2.6,3.8,-1,-1,-1,1
0,0,0,0,0,0,1,1,-1,0,1,0,0,0,1,0,0,-1,1,0,0,0,0,72,0,0,0,1,1,1.21,152,10.9,99.6,7.3,93000,3.2,1.3,82,80,427,106,7.1,6.1,2,9,0.7,-1,-1,-1,0
0,1,0,-1,-1,-1,-1,0,0,0,0,0,-1,1,1,0,0,0,0,0,0,1,1,82,0,0,1,1,1,1.09,811,11.4,89.3,9.1,318000,3.4,0.8,77,102,739,587,7.2,2.14,5,16,-1,14,5,149,0
0,1,0,-1,-1,-1,-1,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,1,46,0,0,0,1,1,1.42,4.7,14.2,90.3,6690,268000,3.1,0.32,37,44,80,517,5.5,0.7,1,13,0.12,-1,-1,-1,1
0,1,0,0,0,0,0,1,0,0,1,1,0,1,0,0,1,0,0,0,0,1,1,71,0,0,1,1,1,1.24,2.6,13.3,96.4,7.8,280000,4.1,0.6,70,52,141,123,6.8,0.82,5,8.3,-1,-1,-1,-1,1
0,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,1,1,1,0,0,1,56,0,40,2,1,1,1.25,2089,15.4,91.6,10.9,175000,4.4,1.3,45,32,717,295,7.4,1.1,5,6,0.6,-1,-1,-1,1
0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,78,0,0,0,2,1,1.03,18,13.2,89.5,2.6,136000,4.3,0.8,18,29,82,141,7.2,0.85,1,9.5,-1,91,31,80,1
0,1,0,0,0,1,0,1,-1,-1,-1,-1,0,-1,-1,0,1,0,0,0,0,0,1,55,0,-1,0,1,1,1.19,4.9,13.6,97.3,5400,133000,4.5,0.9,54,63,487,89,7.8,0.78,2,3.32,-1,78,30,220,1
0,1,1,0,0,1,1,1,0,1,1,1,0,1,0,0,0,0,0,1,0,0,1,76,-1,12,2,1,1,0.94,240,14.7,102.3,9.9,267000,3.6,0.5,64,132,356,192,7.4,0.9,3,2,0.4,-1,-1,-1,1
0,1,0,-1,-1,-1,0,1,0,0,0,0,0,0,0,-1,0,-1,0,0,1,0,0,43,0,0,0,1,1,1.25,180,12.2,87.6,7.2,130,3.5,0.5,79,58,229,302,7,0.6,5,9,-1,-1,-1,206,0
1,1,0,0,0,1,1,1,0,-1,0,0,0,0,0,0,0,-1,1,1,0,0,0,71,0,-1,0,1,1,1.47,15,13.3,89.7,5.7,154000,3.2,1,-1,87,120,108,102,0.68,3,2,-1,-1,-1,-1,0
1,-1,1,0,0,0,1,1,0,0,1,1,1,0,1,0,0,1,0,1,0,0,0,67,70,0,0,1,-1,1.02,24,16,98.8,6.6,96000,4.1,1.4,207,158,116,84,7.2,0.9,1,2.2,0.3,-1,-1,-1,1
1,0,1,0,0,0,0,1,0,1,1,1,0,0,0,0,-1,1,1,1,0,0,0,67,-1,40,0,1,1,1.798,9.4,11.2,102.4,4.1,60000,3.4,3.7,43,63,175,106,7.6,0.52,1,2.1,1.1,94,39,344,1
1,-1,1,0,0,1,0,1,0,1,0,0,0,0,0,0,0,-1,-1,-1,0,0,1,51,-1,37,0,1,1,1.26,7,14.9,106.3,6.4,122,3,1.5,195,401,272,93,6.4,1,3,2.9,0.4,124,51,642,1
1,1,1,0,0,0,0,1,0,-1,-1,-1,-1,-1,-1,0,-1,-1,-1,-1,0,0,0,80,-1,-1,0,1,1,1,4.8,9.2,94,6.2,157000,3.88,0.76,42,51,983,141,-1,1.1,1,15,0.33,-1,-1,-1,1
1,1,1,0,0,0,0,1,-1,1,0,1,0,1,1,0,-1,1,0,1,1,0,0,79,100,15,2,1,3,1.68,92421,14.3,72.2,13.3,459000,3.2,1.6,24,76,570,472,5.9,2.02,1,-1,0.6,29,4,14,0
1,0,1,0,-1,0,0,1,-1,-1,1,1,-1,1,0,0,0,1,1,1,0,0,1,75,-1,-1,0,1,1,1.71,5.2,11.1,106.9,2100,52000,3.3,2.6,15,47,94,117,7.1,0.79,1,3.5,1,-1,-1,-1,1
0,0,0,0,-1,0,0,1,-1,0,0,0,0,0,0,0,0,1,1,1,0,0,0,81,0,0,0,1,1,1.18,16,13.3,94.3,4800,96000,3.8,1.2,26,35,75,105,7.6,0.53,1,2.4,0.3,-1,-1,-1,1
0,1,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,1,1,1,1,0,0,25,0,0,2,1,1,-1,1.5,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,1,6.6,-1,-1,-1,-1,1
1,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,36,0,0,0,1,1,1.12,3204,16.1,92,10.5,182,4.3,0.7,46,31,92,79,7.3,1,1,-1,0.2,-1,-1,-1,1
0,0,1,0,0,0,0,1,0,-1,0,0,0,0,0,0,0,1,-1,-1,0,0,1,69,-1,-1,0,1,1,1.2,10,13.5,104.9,13.5,194,4,1,31,79,126,85,7.6,0.8,1,7,0.4,-1,-1,-1,1
1,1,1,0,0,0,1,1,0,1,1,0,0,0,1,0,0,1,1,1,0,1,1,47,250,18,1,1,3,1.39,695,11.1,93.9,5.4,88000,2.7,1,31,73,38,44,7,0.96,5,3.5,-1,-1,-1,-1,1
1,1,1,-1,-1,-1,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,87,-1,0,3,1,1,1.2,33,9.7,91.6,10.1,277,3.8,2.4,60,54,468,338,7,1.13,1,15,1.3,-1,-1,-1,0
0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,1,1,1,0,0,0,36,0,0,0,1,1,1.52,615,11.7,99.7,5.6,70000,2.82,3,66,50,120,318,6.4,0.64,5,1.9,1,-1,-1,-1,1
1,1,1,0,0,0,0,1,-1,1,0,0,1,0,0,0,0,-1,1,1,1,0,1,64,75,25,3,2,3,1.63,1671,12.8,101.6,4.4,172000,3.44,5.8,38,95,92,139,7.6,0.9,3,9,2.9,111,94,1600,0
1,1,1,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,49,-1,0,1,1,1,1.24,975,15.3,103,11.5,124000,3.5,1.2,62,85,561,266,7.5,0.77,1,2.3,0.6,180,70,1176,0
1,-1,1,0,0,0,0,1,-1,1,0,0,0,1,0,0,0,1,1,1,0,0,1,62,-1,20,0,1,2,1.41,1.7,14.7,97.2,6900,72000,3.5,1.3,31,24,67,97,7.3,0.76,1,3.5,0.3,-1,-1,-1,1
1,-1,0,0,0,0,0,1,-1,-1,1,0,0,0,1,0,0,1,1,1,0,0,1,71,0,-1,3,1,1,1.16,1713,8.2,94.2,6,209000,3.6,0.3,62,59,450,263,6.8,1.49,1,7.5,-1,-1,-1,-1,1
1,1,1,1,0,1,0,1,0,0,0,0,0,0,0,0,0,-1,1,1,0,1,1,64,100,0,3,3,3,1.52,4.9,7.9,111.2,4.1,67000,2.43,1.9,40,71,69,73,4.8,0.77,5,3.2,0.7,40,18,283,0
0,0,1,-1,-1,-1,1,1,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,40,-1,-1,0,1,1,0.84,-1,15.4,109.2,9.3,184000,4.6,0.5,35,40,449,109,7.6,0.7,5,3,-1,-1,-1,-1,1
0,1,0,-1,-1,-1,-1,1,0,0,0,0,0,1,0,-1,0,1,1,1,0,0,1,68,0,0,2,1,1,1.33,4887,12.1,88.9,2.5,141,3,3.6,50,91,147,280,6.7,0.7,1,2.2,2.3,-1,-1,-1,0
1,0,1,0,0,0,0,1,0,1,1,1,0,1,1,0,-1,-1,-1,-1,0,0,1,65,-1,48,0,1,1,1.13,75,13.3,90,8,385000,4.3,0.6,53,52,164,181,7.5,1.46,5,18.6,-1,-1,-1,-1,1
1,0,1,1,0,1,1,1,1,1,0,0,0,0,0,1,0,-1,-1,-1,1,1,1,44,-1,-1,2,1,1,2.14,94964,15.6,117.3,5200,118000,4.8,1.1,50,60,320,170,8.4,0.74,5,18,-1,-1,-1,-1,0
1,1,1,0,0,0,1,1,0,1,0,0,0,0,0,0,0,-1,1,1,0,1,1,52,50,-1,0,1,1,1.79,44340,12.7,95.8,14.4,412000,2.2,28.5,78,127,444,462,6.6,3.95,5,8.5,19.8,-1,-1,-1,0
];
save hcc.mat matrix

clc,clear all,close all
load('hcc.mat');
X=matrix(:,1:49);
y=matrix(:,50);
% Show a feature of the X
plot(X(:,25))
% Find incompleted features and fill them using average value
X_fill=X;
for i=1:49
    feat=X(:,i);
    index_incompleted=find(feat==-1);
    index_completed=find(feat~=-1);
    avg=mean(feat(index_completed));
    X_fill(index_incompleted,i)=avg;
end
% Apply Z-score normalization for each feature
for i=1:49
    X_n(:,i)=(X(:,i)-mean(X(:,i)))./(std(X(:,i))+eps);
end
% Feature selection using Chi2, ReliefF and mRMR
% We have selected the most informative 20 features
% We have computed indexes of the features
id_1=fscchi2(X_n,y);
id_2=relieff(X_n,y,10);
id_3=fscmrmr(X_n,y);
% feature selection
for i=1:20
    sel_feat1(:,i)=X_n(:,id_1(i));
    sel_feat2(:,i)=X_n(:,id_2(i));
    sel_feat3(:,i)=X_n(:,id_3(i));
end
% add y to the last coloumn
sel_feat1(:,21)=y;
sel_feat2(:,21)=y;
sel_feat3(:,21)=y;

%% Classify with SVM classifier

% Selected feature 1

 template = templateSVM(...
    'KernelFunction', 'gaussian', ...
    'PolynomialOrder', [], ...
    'KernelScale', 4.5, ...
    'BoxConstraint', 1, ...
    'Standardize', true);
    mdl = fitcecoc(...
     sel_feat1(:,1:20), ...
    y, ...
    'Learners', template, ...
    'Coding', 'onevsone', ...
    'ClassNames', unique(y)');
trainedClassifier.ClassificationSVM  = mdl;
partitionedModel = crossval(trainedClassifier.ClassificationSVM, 'KFold', 10);

% Compute validation predictions
[predicted, validationScores] = kfoldPredict(partitionedModel);

% Compute validation accuracy
acc1 = 1 - kfoldLoss(partitionedModel, 'LossFun', 'ClassifError');
figure;
confusionchart(y,predicted)


% Selected feature 2

 template = templateSVM(...
    'KernelFunction', 'gaussian', ...
    'PolynomialOrder', [], ...
    'KernelScale', 4.5, ...
    'BoxConstraint', 1, ...
    'Standardize', true);
    mdl = fitcecoc(...
     sel_feat2(:,1:20), ...
    y, ...
    'Learners', template, ...
    'Coding', 'onevsone', ...
    'ClassNames', unique(y)');
trainedClassifier.ClassificationSVM  = mdl;
partitionedModel = crossval(trainedClassifier.ClassificationSVM, 'KFold', 10);

% Compute validation predictions
[predicted, validationScores] = kfoldPredict(partitionedModel);

% Compute validation accuracy
acc2 = 1 - kfoldLoss(partitionedModel, 'LossFun', 'ClassifError');
figure;
confusionchart(y,predicted)

% Selected feature 3

 template = templateSVM(...
    'KernelFunction', 'gaussian', ...
    'PolynomialOrder', [], ...
    'KernelScale', 4.5, ...
    'BoxConstraint', 1, ...
    'Standardize', true);
    mdl = fitcecoc(...
     sel_feat3(:,1:20), ...
    y, ...
    'Learners', template, ...
    'Coding', 'onevsone', ...
    'ClassNames', unique(y)');
trainedClassifier.ClassificationSVM  = mdl;
partitionedModel = crossval(trainedClassifier.ClassificationSVM, 'KFold', 10);

% Compute validation predictions
[predicted, validationScores] = kfoldPredict(partitionedModel);

% Compute validation accuracy
acc3 = 1 - kfoldLoss(partitionedModel, 'LossFun', 'ClassifError');
figure;
confusionchart(y,predicted)






