
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
        
        load "data/2AHX.pdb", protein
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
 
        load "data/2AHX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [460,461,462,1725,1734,1738,1775,1778,2046,2056,1742,2045,1743,1807,1796,1704,1794,1719,447,258,448,1,266,2057] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [7077,7115,6766,6767,6768,6671,6673,6765,7114,7130,6946,6959,7112,7096,7097,7098,6662,6819,6820,6799,6800,6796,6660,6818,6877] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [8701,8702,8703,8752,8755,8757,8765,8770,3987,8761,8747,3993,8748,3946,8799,3944,3950,3941,3892,3959,3960,3990,3891,8771,8804,3936,3937,8801] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [6507,6522,6541,6528,6537,6546,6578,6579,6580,6581,6597,6599,6849,6859,5240,5241,4769,4770,6610,6545,6544] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [8693,8694,8098,8709,8885,8891,8072,8711,8713,8645,8648,8650,8655,8633,8639,8616,8070] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [3286,3287,3898,3259,3882,3883,4080,4082,4074,4081,3805,3822,3902,3844,3900,3261,3839,3843,3828,3834] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [1870,1868,1962,1964,1965,1969,2295,2312,2017,2156,1859,1857] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [741,742,743,997,702,710,998,1221,728,711,703,713,781,779,999,1000,1001,1025,1248] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [5060,5058,5254,5255,5439,5454,6841,6842,6843,6844,6845,6849,6858,5240,5055,5056,5057,5044] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [4837,4840,4861,4924,4925,4926,5101,5103,4823,4991,4993,4961,5084,4956,4877,4876,4921,4954,4955,5089,5085,4822,5098] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [44,210,182,224,305,176,212,145,146,142,175,214,82,61,43,319,325,86,91,147,322] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [9280,6702,6704,6705,6706,9281,9262,9266,9300,9301,9382,9383,9282,9286,9285,9388,9385] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [1541,1545,1548,1664,1730,1732,1439,1547,1453,1443,914,1437,1438,635,926] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [5520,5522,5777,5778,5779,5780,5481,5802,5489,5507] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [7435,7455,7723,7271,7436,7706,7707,7420,7927,7920,7925,7914,7454,7221,7266,7223,7215] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [4469,4470,4455,4451,4471,4474,4574,4577,4595,4591,4489,4490,1902,1903,4571,4572] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [7283,7276,7469,7527,7503,7528,7530,7268,7260,7264,7267,7543,7318,7298,7259,7263] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        