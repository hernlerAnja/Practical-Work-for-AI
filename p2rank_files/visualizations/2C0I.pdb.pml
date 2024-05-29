
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
        
        load "data/2C0I.pdb", protein
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
 
        load "data/2C0I.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5101,5213,6074,5225,5227,5546,5545,5547,6097,5313,5314,5315,5316,6113,5999,5583,5587,5605,5606,5048,5580,5582,5586,5594,5052,5053,5100,5102,5228,5229,5050,5051,5638,5044,5045,5046,5455,5457,5562,5458,5332,5334,5339,5340,5309,5343,5561,5440,5431,5438,6068,6076,6080,5335,5363,5364,6079,6083,6089,6090,6067,6073,6075,6000,6069,6091,6092,6095,5609,5983,5975,5613,5386,5362] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [3357,3379,3385,3387,3431,3390,3456,3386,3417,3359,6848,3355,3358,606,3382,786,6685,6717,6719,3455,778,779,599,598,6932,3365,6946,6947,3363,3333,3335,3361,3366,3179,3171,3202,3138,6850,6881,6876,3432,6880,6694,6679,6643,6645,3204,6873,6874,6872,6902,6970,6971,4106,6905,4293] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [2560,2561,2566,2567,2039,1718,1720,1721,1722,1704,1706,1714,2036,1594,2493,2492,2079,2098,2099,2071,2073,2075,1541,2054,2076,1933,2049,2055,1705,1595,1539,1542,1593,1544,2568,2468,2106,2102] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [1926,1855,1856,1879,1948,1950,1951,2055,1933,1924,1931,1832,1833,1836,2576,2561,2562,2567,2588,2039,1718,1720,1721,2551,2569,2572,2573,1807,1809,1808,2038,2040,1828,2582,2583,2584,2606] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [4117,5771,6893,4137,4138,4139,4174,4175,4444,4432,6885,6926,5736,5735,5737,5738,5740,4141,4172,5747,6934,6935,6964,4105,6904,4447,4457,4441,4443,6924,6921,4423,6966,4467,6960] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [610,3378,629,630,631,632,634,638,2263,2264,667,931,934,936,925,3405,3420,3419,3389,937,940,3445,3449,3451,599,597,3391,3402,3406,3407,3409,2256,3408,3411,2262,2228,2229,2230,2231,2234,2239] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [65,425,560,562,545,1325,1326,63,1347,64,497,51,53,499,502,520,527,513,564,554,652,1330] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [4837,4854,4832,4833,3932,4009,3560,3571,3572,4004,4061,4064,4067,4071,4052,4002,4005,4069,4074,4075,4006,4091,4158] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [589,617,590,618,778,779,3353,3382,2317,2316,2318,606] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [3129,3159,3161,3133,3134,4507,4505,3084,3085,3165,3170,3164,3168,4299,4300,4487,4489,4490,4292,4319,4494,4290] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [116,284,286,287,1393,1397,113,114,129,1396,1400,1401,142,133,394,396,134,393] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [3487,6588,6593,6606,1084,3476,3491,3494,1068,1062,1063,1085,999,979,6641,998,997,6638,978,6604,6608] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [6325,6577,6735,6737,6738,6740,6733,6433,6560,6570,6564] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [3220,2926,3015,3058] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        