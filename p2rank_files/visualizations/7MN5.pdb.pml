
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
        
        load "data/7MN5.pdb", protein
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
 
        load "data/7MN5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6933,6935,4908,4909,4910,6908,8141,8142,6902,8350,8352,7003,7915,7002,5145,4899,4900,4904,4896,4902,4894,7913,6921,6924,6909,5085,7937,8349,8362,8363,8364,8367,8138,8143,8144,7911,6903,6851] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [2920,2933,2934,2935,2936,2228,39,4813,4840,4866,4802,4800,4801,77,78,4803,4804,26,29,47,281,45,46,63,19,186,184,187,31,157,280,287,294,298,300,147,152,155,148,149,150,151,117,76,115,118,67,71,68,70,73,119,297,32,36,18,24,4846,4848,2442,4847,2221,2422,2423,2424,2263,2265,2266,2267,2268,2269,2700,2923,2925,2927,2224,2225] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [6856,6858,6859,6860,6865,6866,5321,5319,6598,5337,6556,6560,6561,5320,6546,6552,6616,6618,6559,6540,6526,6848,6878,5132,5317,5308,5121,5124,5311,4897,4890,5131,5148] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [6943,7005,7009,7011,7014,7015,7245,7020,7058,7059,7194,7044,7045,7051,7425,7427,7700,7701,7209,7211,7236,7066,6999,7918,7916,7010,7235] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [7221,7219,7220,7225,7267,7287,7437,7716,7929,7934,7717,7715,7294,7451,7469,7470,7734,7945,7947,7292,7295,7940,7223,7949,7226] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [586,865,864,705,724,548,469,470] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [2490,2538,2519,2521,4823,2262,2266,2271,2277,2268,2269,2270,4836,4837,2457,2255,4821,2289,2292,2312] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [2398,2408,2392,2211,2212,2216,2227,2232,2233,2234,2238,2239,2020,2907,2908,2896,2029,2016,2017,2018,2391,2209,2684] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [4688,4701,4702,691,693,669,4716,4717,953,731,4682,1183,951,680,682,1168] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [1580,1582,1581,1474,1478,6638,6640,6642,6639,6456,6520,6440,6441,6522] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [905,1595,1120,1122,1123,1483,1490,1492,1420,1563,1473,1474,1479,1480,1562,1702,1578,1568] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [3657,3663,3666,3668,3671,3672,3110,3080,3638,3651,3673,3727,3729,3742,3709,3725,3710,3688,3886,3887] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [2135,2136,2670,2875,2885,3118,3119,3132,3133,2668,2669,2900,2097,2119,2874,1939,1941,1942,2899,1931] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [2229,36,642,21,252,258,18,23,24] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [3535,3536,3538,3541,3271,3272,3547,3570,3571,3572,3576,3270,3589,3590,3542] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [5021,5046,5045,7975,7976,4986,5016,4981,4985] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [8507,8513,8516,8478,8264,8269,8517,8521,8522,8575,8260,8262] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        