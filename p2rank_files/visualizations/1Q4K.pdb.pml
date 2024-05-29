
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
        
        load "data/1Q4K.pdb", protein
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
 
        load "data/1Q4K.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [285,293,1269,1272,289,290,1091,299,301,1042,1063,1088,1058,1062,296,1281,1270,1282,1409,1421,1423,279,282] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [2187,2214,2215,2217,2225,2227,2229,2699,2701,2702,2703,4980,4981,4991,4983,2675,2697,2698,2700,2218,4992,3664,4984,2743,2745,2185,2186,2188,2189,2190,2191,2192,2193,2194,5373,5375,5386,5387,5389,5376,5385] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [3097,2100,2104,2105,2108,2111,3087,2880,2873,2877,2870,3096,3236,3238,2114,2116,3084,3245,2082,2857,3246,3224,3223,2094,2097] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [4829,4842,4983,4990,4968,4969,4832,3918,2205,4647,2215,2216,2217,4651,3892,3898,3901,3903,3904,3909,3902] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [4506,4507,4545,4547,4549,4582,4500,4501,4502,4509,4510,4504,4479,4515,4516,4517,3994,3996,3997,3998,4029,4031,4033,4519,4032] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [410,412,413,414,860,926,928,375,377,379,897,880,881,890,891,895,856,924,882,883,884,886] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [1683,1684,1685,1686,1687,1693,1694,1695,1322,1319,1353,1352,1351,1721,1722,1723,1725,1324,1344,1343,1345,3435,1211,1210] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [3252,3243,3384,3397,3398,3401,3402,1895,3242,3393,1892,1891,1919,3427,1888,1890,1740,1774,3386,1709,1751,1749] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [2026,3279,3281,3296,2024,3353,3354,3355,3299,3317,3464] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [5043,5044,5081,3830,3839,5077,5052,5062,5209,5020,5097,5098,5099,5100] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [3145,3148,5397,3144,3175,3177,3126,5404,5403,5400,5384,5396,5380,3128] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [1333,1335,351,5434,5442,5454,1311,5446,5450] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [314,1395,284,316,1455] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        