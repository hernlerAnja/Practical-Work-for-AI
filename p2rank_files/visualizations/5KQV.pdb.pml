
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/5KQV.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/5KQV.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [11532,11533,11747,11748,11749,12766,12765,11514,11515,12742,12230,12743,11263,11264,12384,12249,12339,12728,11531,12250,11744,11894,11897,11901,11529,12346,12349,11528,11540,11541,12351,12352,12353,12354,11530,12842,12843,12844,12845,12847,12338,12340,12726,11918,12866,11763,11916,11917,11905,11910,11784,11786,12411,12413,12381,12412,6227,6228,6229,6428,6429,6430,6699,6700,12445,12446,12447,12231,6446,6448,6450,6452,6713,6714,12388] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [11018,7761,11219,11237,11019,11020,7545,8058,7546,11242,11243,11238,11239,11241,6723,6724,6741,6742,8057,8059,8080,7216,7224,7225,7226,7220,8056,7228,6956,6953,7212,6957,6958,7202,7209,11016,11017,11221,8073,8081,11490,11491,11505,11506,11507,7696,7726,7727,7728,7760,7762,7699,8043,8041,7564,7565,7703,6472,6473,6740,7666,7233,7668,8098,8099,8097,6738,6739,7661,7654,7655] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [8584,8583,8818,8600,8602,9066,8813,8814,8815,8816,8817,8819,9082,9083,9085,9259,9015,9016,9022,9013,9021,9024,9043,9045,13194,13204,13298,13295,13293,13299,13331,13300,9084,9086,9261,9280,9095,9094,13068,13271,13274,13297,13245,13275,13273,13069,13067,13296,8575,8560,8799,8800,13215,13209,13213,13212,8406] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [5504,5506,5301,5302,3958,5293,5381,5337,5288,5282,3950,3721,5338,5339,5340,5341,5342,5343,3530,3531,5362,5363,3536,5364,5266,3556,3540,3713,5497,5514] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [218,4026,4028,4304,4025,4027,188,4303,4024,4275,4290,4292,4022,4023,4294,4295,4489,4468,4291,4293,4222,4224,4225,4252,4254,4470,4471,4469,4231,4233,4008,4223,3784,4009] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [240,151,238,241,147,274,214,209,216,243,248,273,137,158,10,11,3792,3793,3809,3811,3812,217,218,3606,152,156,155,3615,283,284] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [12877,12878,12880,11956,11957,15221,15222,15225,15226,15227,15228,11959,15386,11997,15234,15235,15236,11961,11964,12893,12895,11968,11953,15712,12897,12900] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [8126,8110,8111,8128,8130,8133,7312,2086,2095,2096,2098,2105,2106,2580,2582,2085,2091,2092,8148,7283,2256,7268,7271,7276,7272,8106] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [10321,10305,10307,10296,10297,10313,10150,10131,10133,10134,10144,10145,10354,10356,8331,8341,8345,8347,8312] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [6737,6992,6738,6739,6986,7233,7668,7232,6740,7216,7224,7225,7223,7220,6953,6967,6971,7670,6995,7022] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [9882,9883,9884,9897,9898,9994,9875,9838,9841,9842,9843,9201,9198,9401,9402,9404,9825,9405] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [5093,5083,5091,5084,5051,4410,5034,5047,5052,5036,4407,4408,4405,4614,5050,4613,4608,4610,4611,5203,5107,5106,5201] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [13854,13856,13878,13879,13880,13643,13846,13847,14021,14032,14036,14037,14039,13642,14034,14035,13659,13997,14038] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [2912,2913,2914,1657,1658,1659,3179,3181,3158,1523,1524,2903,2906,1504,1505,1656,2741,2742,2743] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [2826,2786,2780,1268,3527,1849,2796,2797,2800,1253,1254,1846,1848,3306,3504,3513,3305,3316] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [812,813,814,969,970,971,972,973,788,790,810,935,811,966,968,576,577,931] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [16435,16436,16618,16630,16634,15910,16616,14334,16643,16446,15956,15927,15916,15919,16657,14957,15926,15930,16635] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [13100,13069,13067,13169,13171,13173,13268,13068,13269,13266,13297,13160,13167] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [9785,9135,9133,9145,9337,9339,9340,9328,9329,9569,9579,9132,9520,9571,9572] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [12208,12475,12484,12485,12476,12477,6692,6900,12207,6648,6677,6678,6649,6616,6618,6622,6625] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [15886,14328,14327,15903,15905,15885,14387,14378,14384,14383,14374,14357,15877,16601,16603,15882,15887,15890] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [7522,7523,11691,7799,11196,11468,11469,11416,11413,11439,7792,7800,11213] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [12188,12190,12192,12189,7178,12777,7169,7171,12773,6933,7154,6920,6922,6931,12207] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [3658,4118,3776,3632] 
set surface_color,  pcol24, surf_pocket24 
   
        
        deselect
        
        orient
        