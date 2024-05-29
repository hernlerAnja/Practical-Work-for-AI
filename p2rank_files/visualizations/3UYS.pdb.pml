
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
        
        load "data/3UYS.pdb", protein
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
 
        load "data/3UYS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1328,1916,1917,1918,1920,1921,1335,1767,1735,8161,8186,1748,1753,1754,1757,1760,1726,1739,8748,1749,1765,8151,8153,8154,8751,8749,8558,8569,8565,8586,8589,8592,8753,8567,1360,8597,8752,8726] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [5122,5120,4632,4634,5638,5639,5104,5637,4781,5103,4673,4780,4671,4672,4670,4764,4642,4639,4636,5544,5125,5126,5133] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [2359,2463,2464,2465,2776,2777,3217,2806,2808,2814,2799,2800,2801,2781,2362,2798,2370,2450,2793,2795,3320,3311,3313,3314,3319,2466,2467,3315,2582] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [955,924,1057,1058,1060,1052,205,95,97,204,514,515,1049,94,96,188,1053,1054,544,954,536,538,539,1051,537,533,556] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [7785,7344,7345,7881,7882,7034,7035,7369,7367,7368,7349,6904,7361,7366,7363,6926,7018,7754,6913,6914,6925,6927,6906,6900,7386,7883,7884,7120] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [6646,6661,6662,6647,6648,6649,6708,6704,6699,6713,5293,5323,5324,5326,6711,6620,6621,6607,6616,6622,2089,2094,2121,2056,2085,2083,2123,2124,2175,2173,6707,2119] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [2812,2813,2852,3229,3263,4504,4517,3261,4502,3222] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [1760,1726,1749,1765,1328,1918,1479,1481,1887,1884,1767] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [8815,8816,8232,7957,7955,7991,7993,7658,7660,7661,7989,6505,8814] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [5585,5586,6782,6783,5179,6766,6768,6798,6770,5549,5139,5140,5556,5584] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [7981,7988,7989,5710,5711,5712,5700,5708,5956,5735,5728,5732,6501,6518,6520,6521,6522,7991] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [1980,1981,1982,1983,1984,2009,1406,1125,1158,1159,1161,1127,1163,830,1404,821,819,820,827,828,831] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [7381,7420,7790,7380,7829,7830,7831,7797,9077,9064,9062] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [6303,6305,6029,6287,5878,6456,6031] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [960,551,967,999,1001,975,550,590,2230,2232,2245] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        