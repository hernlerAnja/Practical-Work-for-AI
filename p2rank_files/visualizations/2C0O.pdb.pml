
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
        
        load "data/2C0O.pdb", protein
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
 
        load "data/2C0O.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5562,6076,5440,6067,6068,6069,6073,6074,6075,5227,5228,6079,5983,5229,6089,6091,6092,6095,6097,5314,6090,6113,5309,5335,5999,5561,6000,5613,5975,5583,5587,5607,5609,5586,5605,5594,5606,5638,5438,5455,5457,5362,5458,5363,5364,5339,5340,5343,5566,5431,5433,5386,6080,6083,5221,5543,5546,5212,5547,5316,5213,5580,5582,5102,5225,5100,5101,5046,5048,5049,5044,5045,5051] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [1933,1934,2492,2560,2493,2054,2073,1541,1594,1704,1706,1707,2566,2567,2588,2055,1718,1720,1721,1722,2039,1714,2572,2569,2561,2562,2584,2040,2582,2583,2585,2590,1809,2079,2098,2099,2076,2075,1948,1950,1931,1832,1836,1857,1951,1833,1856,2106,2468,2471,2476,1595,1542,1537,1539,1538,1544,2102,2131,2568] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [6871,6872,6873,6874,6932,6902,6901,6905,6969,6971,3333,3334,3335,3359,3361,3366,3179,6941,6946,3386,6947,3363,6850,6875,6876,6881,6694,6880,3358,3455,3456,3431,3432,3417,6719,6848,6849,786,6679,6685,6645,6646,6717,3355,3357,3379,3382,3390,778,3387,598,599,3471,3171,4293,6970,6986,4106,6981,4104,3138,3168,3202,3204,6897,4286,4284,4285] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [4117,4138,4136,4137,4139,4469,4174,4432,4438,4444,4145,6885,6893,5747,5770,5771,5772,5763,5735,5736,5737,6924,6926,6934,6935,4423,4441,4443,6921,6910,4105,6966,6960,4467,4447] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [2256,3411,2229,2258,2230,3370,3391,3402,3405,3406,3409,2228,2239,2264,2265,2263,2262,3419,610,3378,632,609,630,631,936,925,931,667,633,634,638] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [4004,4020,4052,4070,3560,4027,4029,4034,4006,4009,4067,4069,4833,4832,3570,3571,3572,3932,4854,3558,4064,4071,4061] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [3419,610,632,3389,940,3420,3451,630,631,936,951,931,937,3402,3405,3406] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [2315,2316,2317,2318,3352,3353,590,606,607,3382,779,589,617,641,618] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [582,652,554,557,564,567,560,562,63,64,65,1330,1325,1326,1347,497,513,522,51,425,502,53,545,568,499] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [5822,5823,5824,5825,6868,6897,4286,4097,4125,4096,4113,4114] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [6593,997,1084,1062,1068,1063,3494,979,999,6591,6641,998,3483,3487,3491,6638,978,6604,6608,6606] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [4882,4891,5192,4870,4877,3625,4871,5196,5466,5564,4864,5468,4862,4861,4868,4881,4876] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [6560,6564,6565,6433,6570,6733,6735,6737,6738,6740] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [3220,2926,3058] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        