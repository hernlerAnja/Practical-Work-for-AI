
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
        
        load "data/4KIK.pdb", protein
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
 
        load "data/4KIK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1107,1108,101,102,103,1218,1215,1217,1219,107,1092,108,1220,1223,113,114,674,680,247,524,105,135,654,655,134,136,262,264,677,659,672,415,1225,106,100,675,704,705,707,1080,733,700,697] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [1571,1815,1808,1803,1805,1809,1916,1573,1790,1791,1860,1800,1804,1859,1907,1910,1911,1880,3219,3180,3182,3177,3254,3061,3217,3218,3220,3221,1567,1614,1615,1625,1616,1617,3051,3054,3056,1818,1861,3044,3047] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [6788,7005,7121,6782,6784,6785,6786,8445,8446,6829,6831,6832,8406,5960,8444,8443,8403,8434,6776,6777,6830,6840,7030,7015,7018,7019,7020,8280,7033,7023,8408,7095,7096,7075,8286,8480,8481,8287,8447,8282,8416,7124,7127,8270,7118,8273,8277] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [5208,5209,5212,5207,5213,5214,5837,6264,6371,6373,6263,6374,5211,5260,5261,5372,5810,5811,5815,5808,5856,5863,5860,6236,6248,5387,6379,5828,5830,5831,5853,5833,5836] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [8003,7536,7539,8005,7534,7535,8004,7540,7560,8089,8018,8019,8048,8050,6000,7506,6024,7522,7523,7542,7193,7498,7194,7528,8087,8088] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [5388,5389,6380,6381,6392,5540,5241,5410,5517,5515,5393,5400,5403,5405,6207,6224,6225,6379,6382,6404,5500,6393,6394,6403,6405,5469,5441,5470,5496,5497,5498,5254,5252,5253,5251,5261,6248] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [2414,2860,2868,3373,3021,2411,1951,1957,1964,1965,1968,2850,2852,1943,3316,830,831,3339,3340,3341,3342,1921,1923,1935,3315,3308,3285,3286,1941,1942,787,1944,1945,1946,1947,3020,2867,2866] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [769,744,740,741,742,853,823,1192,1193,799,800,824,2818,2817,1174,829] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [8032,8033,8036,5896,5897,5898,5899,5900,5902,6271,6330,6031,5981,5985,6006,6009,5980,5956,5870,6008,6348,6349] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [2840,2796,2844,2800,2801,2804,2842,2883,2325,2328,2791,2793,2317,2792,844,2834,2836,846,868,2838,2330,2331,869,2311,866,2295,848,2808,876] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [5907,6776,6777,8436,5918,9586,9587,9588,5958,8430,8431,8439,8440,8443,8434,8435,5961,5960,8444,6782,6785] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [8541,8564,8565,8566,8568,8073,8599,8542,8575,8072,8057,7162,7146,7152,7153,7154,7155,7156,7157,8511,8512,8509,8063,8065,8247,7132] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [1562,1570,1567,1625,802,751,804,4315,805,4277,4317,3208,3210,3209,3178,762,3216,3205,3213,3214,3217,3218,3221,3177] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [5379,5789,5790,5289,5292,5735,5121,5174,5712,5266,5269,5376,5397] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [4265,4296,4298,4294,4336,4337,4389,4335,4367,4434,3200,3240,3241,4307,3169,4384,4387,4394,4262,4301,4302,4407] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [263,264,118,121,390,279,315,316,416,1225,376,377,344,345] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [15,68,273,16,272,164,167,588,141,144,254,269,634,589,633,271] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [8247,8243,8245,8253,8517,8518,8272,7140,8258,7130,7132,7146,8511,8509,8540,8542,8514,8541] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [1678,1680,1681,1683,1684,1677,1679,1682,1309,1280,1629,1302,1296,1297,1300,1304,1325,1365] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [8466,9678,8426,9672,9665,9658,9578,9573,9576,9606,9607,9608,9705,9706,8467,9572,9563,9565,9564] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        